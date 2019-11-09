#include <deque>
#include <iostream>
#include <set>
#include <unordered_map>

#include "llvm/Demangle/Demangle.h"
#include "llvm/IR/CallSite.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

static cl::opt<bool> TransitiveClosure(
    "closure",
    cl::desc("Output transitive closure."));

static cl::opt<int> Verbose(
    "v",
    cl::desc("Verbose level"),
    cl::Hidden,
    cl::init(0));

static cl::list<std::string> DebugNodes(
    "dn",
    cl::desc("Debug node patterns. Example: -dn CPUType,at::native"),
    cl::ZeroOrMore,
    cl::CommaSeparated);

namespace {

typedef std::unordered_map<std::string, std::set<std::string>> MMAP;

// Referenced the logic in llvm-cxxfilt.cpp.
std::string demangle(const std::string& mangled) {
  int status;
  const char* decorated = mangled.c_str();
  size_t decoratedLength = strlen(decorated);

  char *undecorated = itaniumDemangle(decorated, nullptr, nullptr, &status);

  if (!undecorated &&
      (decoratedLength > 6 && strncmp(decorated, "__imp_", 6) == 0)) {
    undecorated = itaniumDemangle(decorated + 6, nullptr, nullptr, &status);
  }
  std::string result(undecorated ? undecorated : mangled);
  free(undecorated);
  return result;
}

// LLVM_DEBUG needs opt to be built with debug support.
template<
    typename T,
    typename std::enable_if<std::is_base_of<Value, T>::value, int>::type = 0>
std::ostream& operator<<(std::ostream& out, T& I) {
  std::string str;
  raw_string_ostream O(str);
  O << I;
  return out << str;
}

std::ostream& operator<<(std::ostream& out, MMAP& M) {
  for (const auto& it : M) {
    for (const auto& value : it.second) {
      out << it.first << " -> " << value << std::endl;
    }
  }
  return out;
}

class OpDependency : public ModulePass {
public:
  static char ID; // Pass identification, replacement for typeid

  OpDependency() : ModulePass(ID) {}
  ~OpDependency() = default;

  bool runOnModule(Module& M) override {
    // Use fuzz matcher to find functions related to function schema strings.
    MMAP schemaStrToFunctions, functionsToSchemaStrs;
    scanForFunctionSchemaGlobalConstant(
        M, &schemaStrToFunctions, &functionsToSchemaStrs);

    // Regular CallGraph analysis.
    MMAP functionToFunctions;
    scanForCallGraph(M, &functionToFunctions);

    // Simply dump all types of edges into one input graph.
    MMAP input, result;
    mergeGraph(schemaStrToFunctions, &input);
    mergeGraph(functionsToSchemaStrs, &input);
    mergeGraph(functionToFunctions, &input);

    // Generate dependency graph among "key" nodes.
    generateDependencyGraph(input, &result);
    std::cout << result;

    return false;
  }

private:
  // Searching for global string constants that look like function schema, e.g.:
  // "aten::relu". Then search for places using the function schema string
  // constant to 1) register op; 2) call op.
  static void scanForFunctionSchemaGlobalConstant(
      Module& M, MMAP* schemaStrToFunctions, MMAP* functionsToSchemaStrs) {
    for (GlobalVariable& GV : M.globals()) {
      if (!GV.hasInitializer()) continue;
      Constant* gvInit = GV.getInitializer();
      if (gvInit->isNullValue()) continue;
      ConstantDataArray* gvInitArray = dyn_cast<ConstantDataArray>(gvInit);
      if (!gvInitArray || !gvInitArray->isCString()) continue;
      std::string gvInitStr = gvInitArray->getAsCString().str();
      if (!isFunctionSchemaString(gvInitStr)) continue;
      std::string schemaStr = truncateFunctionSchemaString(gvInitStr);

      // Search for GV users.
      for (auto gvUser : GV.users()) {
        // Search for "i8* getelementptr inbounds" ConstantExpr.
        ConstantExpr* CE = dyn_cast<ConstantExpr>(gvUser);
        if (!CE) continue;

        // Search for CE users.
        for (auto ceUser : CE->users()) {
          // Search for "std::basic_string" constructor.
          Instruction* ceUserInst = dyn_cast<Instruction>(ceUser);
          if (!ceUserInst) continue;
          analyzeFunctionSchemaUser(
              schemaStr, *ceUserInst, schemaStrToFunctions,
              functionsToSchemaStrs);
        }
      }
    }
  }

  // Use fuzzy match to find all llvm::Function instances related to the
  // function schema string. There are two types of relationship:
  // 1) functions that call the op (representated by the function schema);
  // 2) functions that are registered as the implementation of the op;
  //
  // For calling op, simply check whether the parent function calls
  // 'c10::Dispatcher::findSchema' since the use of the schema string.
  //
  // For registering op, collect all function references between two following
  // "c10::RegisterOperators::Options::schema" calls. The function references
  // can be direct function call, function pointer or template arguement.
  //
  // Note that these rules highly depend on how LLVM emit IRs. If it changes
  // the sequence of schema string reference and c10::RegisterOperators API call
  // then we might need use more sophisticated alias analysis, analyze clang-AST
  // instead or simplify leverage the connection between function schema string
  // and related function name (as they are generated by script).
  static void analyzeFunctionSchemaUser(
      const std::string& schemaStr,
      Instruction& I,
      MMAP* schemaStrToFunctions,
      MMAP* functionsToSchemaStrs) {
    std::string parentFunctionName = I.getFunction()->getName();
    bool seenOptionsSchemaCall = false;
    for (Instruction* cur = getNextInstruction(I);
         cur;
         cur = getNextInstruction(*cur)) {
      // Check pattern to call registered ops.
      if (checkInstructionCalledFunction(*cur, "c10::Dispatcher::findSchema")) {
        (*functionsToSchemaStrs)[parentFunctionName].insert(schemaStr);
        continue;
      }

      // Check pattern to register ops.
      if (checkInstructionCalledFunction(
          *cur, "c10::RegisterOperators::Options::schema")) {
        if (seenOptionsSchemaCall) break;
        seenOptionsSchemaCall = true;
        continue;
      }

      // Collect function references between two op registration (between two
      // "Options::schema" calls).
      if (seenOptionsSchemaCall) {
        auto cb = [&](Function* func) -> void {
          (*schemaStrToFunctions)[schemaStr].insert(func->getName());
          if (Verbose) {
            std::cerr << "[DEBUG] " << schemaStr << " => "
                      << demangle(func->getName()) << std::endl;
          }
        };
        if (Verbose) {
          std::cerr << "[DEBUG] " << schemaStr << " [INST] "
                    << *cur << std::endl;
        }
        scanReferredFunctionsFromOperands(*cur, cb);
        Function* callee = getCalledFunction(*cur);
        if (callee) {
          // Look into callee to handle function-type-as-template-param case.
          // Regular call graph analysis only checks call/invoke.
          scanReferredFunctionsFromOperandsInFunction(*callee, cb);
        }
      }
    }
  }

  // Referenced the logic in llvm::CallGraph.
  static void scanForCallGraph(Module& M, MMAP* functionToFunctions) {
    for (Function& F : M) {
      std::string name = F.getName();
      for (BasicBlock& BB : F) {
        for (Instruction& I : BB) {
          Function* callee = getCalledFunction(I);
          if (callee) {
            (*functionToFunctions)[name].insert(callee->getName());
          }
        }
      }
    }
  }

  // Generate dependency graph among "key" nodes.
  static void generateDependencyGraph(MMAP& input, MMAP* output) {
    typedef std::pair<std::string, std::string> ELEM;  // (key ancestor -> node)
    std::deque<ELEM> queue;
    MMAP expanded;
    auto expand = [&](
      const std::string& keyAncestor, const std::string& curNode) -> void {
      if (!expanded[keyAncestor].insert(curNode).second) return;
      for (auto& next : input[curNode]) {
        queue.emplace_back(keyAncestor, next);
      }
    };

    // First expand all key nodes.
    for (auto& E : input) {
      if (isKeyNode(E.first)) {
        expand(E.first, E.first);
      }
    }

    // Use BFS to explore the sparse graph.
    while (!queue.empty()) {
      auto curElem = queue.front();
      queue.pop_front();
      std::string& keyAncestor = curElem.first;
      std::string& curNode = curElem.second;
      if (isKeyNode(curNode)) {
        // Output links between key nodes.
        (*output)[keyAncestor].insert(curNode);
        // Stop expanding key nodes.
        if (!TransitiveClosure) continue;
      }
      // Expand trivial nodes.
      expand(keyAncestor, curNode);
    }
  }

  static bool isFunctionSchemaString(const std::string& str) {
    return str.find("aten::") == 0 || str.find("quantized::") == 0;
  }

  static std::string truncateFunctionSchemaString(
      const std::string& schemaStr) {
    auto pos = schemaStr.find('(');
    return pos == std::string::npos ? schemaStr : schemaStr.substr(0, pos);
  }

  static bool isKeyNode(const std::string& node) {
    return isFunctionSchemaString(node) || isDebugNode(node);
  }

  // Doesn't affect the correctness of the result.
  static bool isDebugNode(const std::string& node) {
    if (DebugNodes.empty()) return false;
    auto str = demangle(node);
    for (const auto& debug : DebugNodes) {
      return str.find(debug) != std::string::npos;
    }
  }

  static Instruction* getNextInstruction(Instruction& I) {
    Instruction* next = I.getNextNonDebugInstruction();
    if (next) return next;
    auto parentBlock = I.getParent();
    if (!parentBlock) return nullptr;
    auto nextBlock = parentBlock->getNextNode();
    return nextBlock ? &nextBlock->front() : nullptr;
  }

  // Referenced the logic in llvm::CallGraph.
  static Function* getCalledFunction(Instruction& I) {
    auto CS = CallSite(&I);
    if (!CS) return nullptr;
    Function* callee = CS.getCalledFunction();
    if (!callee || callee->isIntrinsic()) {
      return nullptr;
    }
    return callee;
  }

  // CallGraph only searches for CallSites (call/invoke instructions). However
  // functions can be referenced in other instructions as well (being passed
  // as function pointer).
  // This method recursively traverses all operands to search for function
  // pointers, e.g.:
  // ```
  // store i64 ptrtoint (void (%"class.at::Tensor"*, %"class.at::Tensor"*)*
  //                     @at::foo_op(at::Tensor const&) to i64), i64* %14, ...
  // ```
  // "@at::foo_op" is a operand of "ptrtoint", which in turn is a constant
  // operand of "store" instruction.
  static void scanReferredFunctionsFromOperands(
      User& U, const std::function<void(Function*)>& CB) {
    for (auto& O : U.operands()) {
      Function* func = dyn_cast<Function>(O);
      if (func && !func->isIntrinsic()) {
        CB(func);
      }
      // Recursively scans constant operand. Operands that are instructions
      // should already be scanned when it scans the entire function.
      Constant* C = dyn_cast<Constant>(O);
      if (C) {
        scanReferredFunctionsFromOperands(*C, CB);
      }
    }
  }

  static void scanReferredFunctionsFromOperandsInFunction(
      Function& F, const std::function<void(Function*)>& CB) {
    for (BasicBlock& BB : F) {
      for (Instruction& I : BB) {
        scanReferredFunctionsFromOperands(I, CB);
      }
    }
  }

  static bool checkInstructionCalledFunction(
      Instruction& I, const std::string& pattern) {
    Function* callee = getCalledFunction(I);
    return callee
        && demangle(callee->getName()).find(pattern) != std::string::npos;
  }

  static void mergeGraph(MMAP& src, MMAP* dest) {
    for (auto& S : src) {
      for (auto& E : S.second) {
        (*dest)[S.first].insert(E);
      }
    }
  }
};

} // namespace

char OpDependency::ID = 0;
static RegisterPass<OpDependency> X("op_dependency", "Op Dependency Pass");
