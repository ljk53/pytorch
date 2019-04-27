#pragma once
#include <vector>

namespace torch {
namespace jit {

struct Instruction;

void ExportInstructions(
    const InstructionList& inslist,
    const std::string& filename);

} // namespace jit
} // namespace torch
