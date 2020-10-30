from tools.codegen.code_template import CodeTemplate

from .utils import CodeTemplate, write, uninplace_api_name

def is_out_overload(declaration):
    return declaration['api_name'].endswith('_out')

# These functions we don't want to record for tracing, because we always want
# to trace their constituent parts.  This is a temporary hack in lieue
# of proper scopes, where subsequent compilation passes can ask for the unfolding
# on demand.  Only concrete ATen methods can be disabled this way; it will have
# NO EFFECT otherwise.
DONT_RECORD_TRACE = {
    'convolution', 'conv1d', 'conv2d', 'conv3d', 'conv_transpose1d',
    'conv_transpose2d', 'conv_transpose3d', 'lstm_cell', 'gru_cell',
    'rnn_tanh_cell', 'rnn_relu_cell', 'linear',
    # FIXME: figure out a better way when we support sparse tensors in jit
    '_coalesced_',
}

# TODO: consolidate with 'gen_python_functions.should_trace()'
def should_trace(declaration):
    # Operations involving Storage or Type are not traceable at the moment
    if any(arg['simple_type'] in {'Storage', 'Type', 'ConstQuantizerPtr'} for arg in declaration['arguments']):
        return False
    # We can't trace functions which don't have any Tensor or TensorList returns
    if 'Tensor' not in declaration['return_type']:
        return False
    name = declaration['name']
    base_name = name[:-1] if declaration['inplace'] else name[:-4] if name.endswith('_out') else name
    if base_name in DONT_RECORD_TRACE or name in DONT_RECORD_TRACE:
        return False
    return True

SELECT = CodeTemplate("""\

if (${cond}) {
  ${true}
} else {
  ${false}
}
""")

OP_NAME = CodeTemplate("""\
op_name = jit::Symbol::fromQualString("aten::${trace_name}");
""")

# These functions have their names recorded under trace renamed,
RENAME_TRACE = {
    'zero': 'zeros_like',  # replacing aten::zero_ with aten::zeros_like
    'fill': 'full_like',  # replacing aten::fill_ with aten::full_like
}

def format_trace_op_name(declaration):
    is_inplace = declaration['api_name'] != uninplace_api_name(declaration['api_name'])

    if not is_inplace or is_out_overload(declaration):
        # special case for *_out functions: the in-place and out-of-place ops
        # are overloaded with the same name in the JIT
        trace_name = uninplace_api_name(declaration['api_name'])
        trace_name = RENAME_TRACE.get(trace_name, trace_name)
        return OP_NAME.substitute(trace_name=trace_name)

    # otherwise, this is an in-place op and we need to emit both in- and
    # out-of-place versions
    outplace_trace_name = uninplace_api_name(declaration['api_name'])
    inplace_trace_name = declaration['api_name']
    outplace_trace_name = RENAME_TRACE.get(outplace_trace_name, outplace_trace_name)
    inplace_trace_name = RENAME_TRACE.get(inplace_trace_name, inplace_trace_name)

    select_params = {}
    select_params['cond'] = 'tracer_state->force_outplace'
    select_params['true'] = OP_NAME.substitute(trace_name=outplace_trace_name)
    select_params['false'] = OP_NAME.substitute(trace_name=inplace_trace_name)

    return SELECT.substitute(select_params)


ADD_TRACE_INPUT = CodeTemplate("""jit::tracer::addInputs(node, "${name}", ${input});""")

def format_trace_inputs(declaration):

    def dispatch_trace_input(arg_spec):
        name, value, simple_type, nullable = arg_spec
        # XXX: For arg that have type of Tensor?[], tracer will pass allow_undefined to addInputs
        if simple_type == 'TensorList' and nullable:
            return '''jit::tracer::addInputs(node, "{}", {}, {});'''.format(name, value, "true")
        else:
            if value == "options":
                result = ""
                result += ADD_TRACE_INPUT.substitute(name=name, input="optTypeMetaToScalarType(options.dtype_opt())") + "\n"
                result += ADD_TRACE_INPUT.substitute(name=name, input="options.layout()") + "\n"
                result += ADD_TRACE_INPUT.substitute(name=name, input="options.device()") + "\n"
                result += ADD_TRACE_INPUT.substitute(name=name, input="options.pinned_memory()")
                return result
            else:
                return ADD_TRACE_INPUT.substitute(name=name, input=value)

    if declaration['use_c10_dispatcher'] in ['full', 'hacky_wrapper_for_legacy_signatures']:
        trace_inputs = declaration['schema_order_arguments']
    else:
        assert declaration['use_c10_dispatcher'] == 'with_codegenerated_unboxing_wrapper'
        trace_inputs = declaration['arguments']

    if is_out_overload(declaration):
        # *_out functions take the result as a first argument, but they are the
        # last argument in the JIT schema.
        out_input = trace_inputs[0]
        trace_inputs = trace_inputs[1:]

    if declaration['use_c10_dispatcher'] in ['full', 'hacky_wrapper_for_legacy_signatures']:
        trace_input_spec = [(i['name'], i['name'], i['type'], i.get('is_nullable')) for i in trace_inputs]
    else:
        assert declaration['use_c10_dispatcher'] == 'with_codegenerated_unboxing_wrapper'
        trace_input_spec = [(i['name'], i['name'], i['simple_type'], i.get('is_nullable')) for i in trace_inputs]

    trace_inputs = \
        '\n'.join(dispatch_trace_input(arg_spec) for arg_spec in trace_input_spec)

    if is_out_overload(declaration):
        # for *_out functions, handle the result argument differently for inplace/outplace.
        # For inplace: just add the input to the end to confirm with the JIT schema
        value = out_input['name']
        inplace = ADD_TRACE_INPUT.substitute(name=out_input['name'], input=value)

        # for outplace: do nothing, except if the declaration is a factory.
        # Factories are a bit special because their out-of-place overloads
        # take an extra TensorOptions argument, which is missing in the _out function
        trace_name = uninplace_api_name(declaration['api_name'])
        has_factory_name = trace_name in FACTORY_FUNCTION_NAMES
        if has_factory_name:
            outplace = ""
            outplace += ADD_TRACE_INPUT.substitute(name='out', input='optTypeMetaToScalarType(out.options().dtype_opt())') + "\n"
            outplace += ADD_TRACE_INPUT.substitute(name='out', input='out.options().layout()') + "\n"
            outplace += ADD_TRACE_INPUT.substitute(name='out', input='out.options().device()') + "\n"
            outplace += ADD_TRACE_INPUT.substitute(name='out', input='out.options().pinned_memory()')
        else:
            outplace = ''

        trace_inputs += '\n'
        trace_inputs += SELECT.substitute(
            cond='tracer_state->force_outplace', true=outplace, false=inplace)

    return trace_inputs


# `torch.jit.trace` have undocumented keyword argument `_force_outplace`,
# which force jit to replace functions with outplace variants (for
# example `aten::add_` becomes `aten::add`).
#
# This replacement implemented in-place with minimum modifications of
# arguments stack (as it assumes that outplace call has the same arguments
# as inplace version).
#
# However there are no such substitutions available for `aten::fill_`
# and `aten::zero_` operators, as we never implemented `aten::fill`
# and `aten::zero`. So jit tracing hack replacing `aten::zero_` with
# `aten::zeros_like` and replacing `aten::fill_` with `aten::full_like`.
#
# But as they potentially can have different arguments, we also have
# to hack into the stack and add missing ones.
#
# A possible alternative would be:
#
#  - Add `aten::fill` and `aten::zero`
#
#  - Or keep `aten::zeros_like` arguments aligned with `aten::zero_`
# arguments (inside of the `native_functions.yaml`)
RENAME_TRACE_ADD_ARGS = {
    'fill': '''\
    jit::tracer::addInputs(node, "options", c10::optional<ScalarType>());
    jit::tracer::addInputs(node, "options", layout_or_default(c10::nullopt));
    jit::tracer::addInputs(node, "options", device_or_default(c10::nullopt));
    jit::tracer::addInputs(node, "options", pinned_memory_or_default(c10::nullopt));
    c10::optional<MemoryFormat> memory_format = c10::MemoryFormat::Preserve;
    jit::tracer::addInputs(node, "memory_format", memory_format);
''',
    'zero': '''\
    jit::tracer::addInputs(node, "options", c10::optional<ScalarType>());
    jit::tracer::addInputs(node, "options", layout_or_default(c10::nullopt));
    jit::tracer::addInputs(node, "options", device_or_default(c10::nullopt));
    jit::tracer::addInputs(node, "options", pinned_memory_or_default(c10::nullopt));
    c10::optional<MemoryFormat> memory_format = c10::MemoryFormat::Preserve;
    jit::tracer::addInputs(node, "memory_format", memory_format);
''',
}

INPLACE_GUARD = CodeTemplate("""\
jit::tracer::ensureUniqueIfOutOfPlaced("${name}", ${mutable_input});
""")

PRE_RECORD_TRACE = CodeTemplate("""\
torch::jit::Node* node = nullptr;
std::shared_ptr<jit::tracer::TracingState> tracer_state;
if (jit::tracer::isTracing()) {
  tracer_state = jit::tracer::getTracingState();
  at::Symbol op_name;
  ${set_op_name}
  node = tracer_state->graph->create(op_name, /*num_outputs=*/0);
  jit::tracer::recordSourceLocation(node);
  ${add_trace_inputs}
  tracer_state->graph->insertNode(node);
  ${inplace_guard}
  jit::tracer::setTracingState(nullptr);
}
""")

def format_prerecord_trace(declaration):
    local = {}
    is_inplace = declaration['api_name'] != uninplace_api_name(declaration['api_name'])

    local['set_op_name'] = format_trace_op_name(declaration)

    is_inplace = declaration['api_name'] != uninplace_api_name(declaration['api_name'])
    add_args = ''
    if is_inplace:
        api_name = uninplace_api_name(declaration['api_name'])
        add_args = RENAME_TRACE_ADD_ARGS.get(api_name, '')
    if add_args:
        select_params = {}
        select_params['cond'] = 'tracer_state->force_outplace'
        select_params['true'] = add_args
        select_params['false'] = ''
        additional_inputs = SELECT.substitute(select_params)
    else:
        additional_inputs = ''
    local['add_trace_inputs'] = format_trace_inputs(declaration) + additional_inputs

    local['inplace_guard'] = ''
    if is_inplace:
        local['inplace_guard'] = INPLACE_GUARD.substitute(
            name=declaration['api_name'],
            mutable_input=declaration['arguments'][0]['name'])

    return PRE_RECORD_TRACE.substitute(local)


POST_RECORD_TRACE = CodeTemplate("""\
if (tracer_state) {
  jit::tracer::setTracingState(std::move(tracer_state));
  ${add_trace_outputs}
}
""")

def format_postrecord_trace(declaration):
    # For outplacing ops, *_out overloads require special handling to move the
    # output *argument* to a return value
    if is_out_overload(declaration):
        output_names_outplace = [arg['name'] for arg in declaration['arguments'] if arg.get('output', False)]
        output_names_inplace = [r['name'] for r in declaration['returns']]

        # Code size optimization: the common case is that the return value is
        # the same for both variants
        if output_names_outplace == output_names_inplace:
            outputs = ['jit::tracer::addOutput(node, {});'.format(n) for n in output_names_outplace]
            return POST_RECORD_TRACE.substitute(add_trace_outputs=outputs)

        local = {}
        local['cond'] = 'force_outplace'
        local['true'] = ['jit::tracer::addOutput(node, {});'.format(n) for n in output_names_outplace]
        local['false'] = ['jit::tracer::addOutput(node, {});'.format(n) for n in output_names_inplace]
        selection = SELECT.substitute(local)
        return POST_RECORD_TRACE.substitute(add_trace_outputs=selection)

    output_names = [r['name'] for r in declaration['returns']]
    outputs = ['jit::tracer::addOutput(node, {});'.format(n) for n in output_names]
    return POST_RECORD_TRACE.substitute(add_trace_outputs=outputs)


def format_trace(declaration):
    if not should_trace(declaration):
        return ('', '')
    return (format_prerecord_trace(declaration), format_postrecord_trace(declaration))


# Methods shared by TraceType and VariableType to handle return variable declaration, tie and tuple.
def format_return_variables(declaration):
    name = declaration['name']
    arguments = declaration['arguments']
    inplace = declaration['inplace']
    is_out_fn = name.endswith('_out')
    modifies_arguments = inplace or is_out_fn

    def declare_returned_variables():
        if modifies_arguments:
            return ''
        if len(declaration['returns']) == 1:
            return ''
        # TODO: this will be ugly
        names = [ret['type'] + ' ' + ret['name'] + ';' for ret in declaration['returns']]
        return '\n'.join(names)

    def tie_return_values():
        if len(declaration['returns']) == 1:
            return 'auto {}'.format(declaration['returns'][0]['name'])
        names = [ret['name'] for ret in declaration['returns']]
        return 'std::tie({})'.format(', '.join(names))

    def get_return_value():
        if inplace:
            return 'self'
        if is_out_fn:
            return_names = [arg['name'] for arg in arguments
                            if arg.get('output', False)]
            if len(return_names) == 1:
                return return_names[0]
            return 'std::forward_as_tuple({})'.format(', '.join(return_names))

        returns = declaration['returns']
        if len(returns) == 1:
            return returns[0]['name']
        moved = ['std::move({})'.format(r['name']) for r in returns]
        return 'std::make_tuple({})'.format(', '.join(moved))

    return (declare_returned_variables(), tie_return_values(), get_return_value())


# TraceType templates
# TODO: change `redispatch` to `NoTracerDispatchMode` + regular `call`.
# See NOTE[UnboxedOnly]
UNBOXED_TRACE_DISPATCH = CodeTemplate("""\
static auto op = c10::Dispatcher::singleton()
    .findSchemaOrThrow("aten::${operator_name}", "${overload_name}")
    .typed<${return_type} (${arg_types})>();
${assign_return_values}c10::Dispatcher::singleton()
    .redispatch<${ret_and_arg_types}>(${trace_dispatch_args});
""")

TRACE_DISPATCH = CodeTemplate("""\
static auto op = c10::Dispatcher::singleton()
    .findSchemaOrThrow("aten::${operator_name}", "${overload_name}")
    .typed<${return_type} (${schema_order_arg_types})>();
${assign_return_values}c10::Dispatcher::singleton()
    .redispatch<${schema_order_ret_and_arg_types}>(${schema_order_trace_dispatch_args});
""")

def emit_trace_body(declaration):
    returns = declaration['returns']
    name = declaration['name']
    inplace = declaration['inplace']
    is_out_fn = name.endswith('_out')
    modifies_arguments = inplace or is_out_fn
    returns_void = len(returns) == 0

    trace_body = []
    pre_record_trace, post_record_trace = format_trace(declaration)
    declare_returned_variables, tie_return_values, get_return_value = format_return_variables(declaration)

    trace_body.append(pre_record_trace)
    trace_body.append(declare_returned_variables)

    arg_types = ', '.join([a['type'] for a in declaration['arguments']])
    ret_and_arg_types = ', '.join([declaration['return_type']] + [a['type'] for a in declaration['arguments']])
    schema_order_arg_types = ', '.join([a['type'] for a in declaration['schema_order_arguments']])
    schema_order_ret_and_arg_types = ', '.join(
        [declaration['return_type']] + [a['type'] for a in declaration['schema_order_arguments']])

    trace_dispatch_args = ['op', 'c10::DispatchKey::Tracer'] + declaration['args']
    schema_order_trace_dispatch_args = ['op', 'c10::DispatchKey::Tracer'] + declaration['schema_order_args']
    assign_return_values = '{} = '.format(tie_return_values) if not modifies_arguments and not returns_void else ''
    if declaration['use_c10_dispatcher'] in ['hacky_wrapper_for_legacy_signatures', 'full']:
        call = TRACE_DISPATCH.substitute(
            declaration,
            schema_order_arg_types=schema_order_arg_types,
            assign_return_values=assign_return_values,
            schema_order_ret_and_arg_types=schema_order_ret_and_arg_types,
            schema_order_trace_dispatch_args=schema_order_trace_dispatch_args,
        )
    else:
        assert declaration['use_c10_dispatcher'] == 'with_codegenerated_unboxing_wrapper'
        call = UNBOXED_TRACE_DISPATCH.substitute(
            declaration,
            arg_types=arg_types,
            ret_and_arg_types=ret_and_arg_types,
            trace_dispatch_args=trace_dispatch_args,
            assign_return_values=assign_return_values,
        )
    trace_body.append(call)
    trace_body.append(post_record_trace)
    if not returns_void:
        trace_body.append('return {};'.format(get_return_value))
    return trace_body


def find_factory_functions(declarations):
    global FACTORY_FUNCTION_NAMES
    FACTORY_FUNCTION_NAMES = set()

    for declaration in declarations:
        if declaration['is_factory_method']:
            FACTORY_FUNCTION_NAMES.add(declaration['api_name'])


MANUAL_TRACER = set([
    'options', 'data', 'set_data', 'is_leaf', 'output_nr', '_version', 'retain_grad',
    'backward', 'requires_grad_',
    'resize_', 'resize_as_', 'detach', 'detach_', 'copy_',
])


METHOD_DEFINITION = CodeTemplate("""\
${return_type} ${type_wrapper_name}(${formals}) {
  ${type_definition_body}
}
""")

WRAPPER_REGISTRATION = CodeTemplate("""\
m.impl("${unqual_operator_name_with_overload}",
       TORCH_FN(${class_type}::${type_wrapper_name})
);
""")

UNBOXEDONLY_WRAPPER_REGISTRATION = CodeTemplate("""\
m.impl_UNBOXED("${unqual_operator_name_with_overload}", &${class_type}::${type_wrapper_name});
""")


def gen_variable_type_shard(out, aten_declarations, template_path, suffix, header):
    TRACE_TYPE_CPP = CodeTemplate.from_file(template_path + '/TraceType.cpp')
    trace_method_definitions = []
    trace_wrapper_registrations = []

    for declaration in aten_declarations:
        if declaration['use_c10_dispatcher'] in ['full', 'hacky_wrapper_for_legacy_signatures']:
            formals = declaration['schema_order_formals']
        else:
            assert declaration['use_c10_dispatcher'] == 'with_codegenerated_unboxing_wrapper'
            formals = declaration['formals']

        # Emit TraceType code
        if declaration['name'] not in MANUAL_TRACER:
            trace_body = emit_trace_body(declaration)
            trace_method_definitions.append(METHOD_DEFINITION.substitute(
                declaration, type_definition_body=trace_body, formals=formals))

            if declaration['use_c10_dispatcher'] in ['full', 'hacky_wrapper_for_legacy_signatures']:
                trace_wrapper_registrations.append(WRAPPER_REGISTRATION.substitute(
                    declaration, class_type='TraceType'))
            else:
                assert declaration['use_c10_dispatcher'] == 'with_codegenerated_unboxing_wrapper'
                trace_wrapper_registrations.append(UNBOXEDONLY_WRAPPER_REGISTRATION.substitute(
                    declaration, class_type='TraceType'))

    env = {
        'trace_method_definitions': trace_method_definitions,
        'trace_wrapper_registrations': trace_wrapper_registrations,
    }
    if not header:
        write(out, 'TraceType%s.cpp' % suffix, TRACE_TYPE_CPP, env)


def gen_trace_type(out, aten_declarations, template_path):

    """VariableType.h and VariableType.cpp body

    This is the at::Type subclass for differentiable tensors. The
    implementation of each function dispatches to the base tensor type to
    compute the output. The grad_fn is attached to differentiable functions.
    """

    # WARNING: this function call modifies global mutable state
    find_factory_functions(aten_declarations)

    aten_declarations = list(sorted(aten_declarations, key=lambda decl: decl['name']))

    gen_variable_type_shard(out, aten_declarations, template_path, None, True)

    # NOTE: see Note [Sharded File] at the top of the VariableType.cpp
    # template regarding sharding of the generated files.
    num_shards = 5
    shards = [[] for _ in range(num_shards)]

    # functions are assigned arbitrarily but stably to a file based on hash
    for decl in aten_declarations:
        x = sum(ord(c) for c in decl['name']) % num_shards
        shards[x].append(decl)

    for i, shard in enumerate(shards):
        gen_variable_type_shard(out, shard, template_path, '_%d' % i, False)
    gen_variable_type_shard(out, aten_declarations, template_path, 'Everything', False)
