# Generates C++ functions that wrap ATen tensor factory methods to turn them into Variables.
#
# This writes one file: variable_factories.h

from typing import Optional, List

from tools.codegen.api.types import *
import tools.codegen.api.cpp as cpp
import tools.codegen.api.python as python
from tools.codegen.gen import with_native_function, parse_native_yaml, FileManager, mapMaybe
from tools.codegen.model import *

def gen_variable_factories(out: str, native_yaml_path: str, template_path: str) -> None:
    native_functions = parse_native_yaml(native_yaml_path)
    fm = FileManager(install_dir=out, template_dir=template_path, dry_run=False)
    fm.write_with_template('variable_factories.h', 'variable_factories.h', lambda: {
        'generated_comment': f'@generated from {fm.template_dir}/variable_factories.h',
        'function_definitions': list(mapMaybe(process_function, native_functions)),
    })

@with_native_function
def process_function(f: NativeFunction) -> Optional[str]:
    name = cpp.name(f.func)
    has_tensor_options = python.has_tensor_options(f)

    if not Variant.function in f.variants or \
            not has_tensor_options and not name.endswith("_like"):
        return None

    sig = CppSignatureGroup.from_schema(f.func, method=False).signature
    exprs: List[str] = []
    for arg in sig.arguments():
        if isinstance(arg.argument, TensorOptionsArguments):
            # note: we remove the requires_grad setting from the TensorOptions because
            # it is ignored anyways (and we actually have an assertion that it isn't set
            # which would fail otherwise). We handle requires_grad explicitly here
            # instead of passing it through to the kernel.
            exprs.append(f'at::TensorOptions({arg.name}).requires_grad(c10::nullopt)')
        else:
            exprs.append(arg.name)

    requires_grad = "options.requires_grad()" if has_tensor_options else "false"

    return f"""\
inline {sig.decl()} {{
  at::Tensor tensor = ([&]() {{
    at::AutoNonVariableTypeMode non_var_type_mode(true);
    return at::{name}({', '.join(exprs)});
  }})();
  at::Tensor result =
    autograd::make_variable(std::move(tensor), /*requires_grad=*/{requires_grad});
  return result;
}}
"""
