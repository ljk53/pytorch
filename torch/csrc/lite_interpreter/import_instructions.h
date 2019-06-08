#pragma once
#include <istream>
#include <memory>
#include <torch/csrc/jit/generic_instruction.h>

#include "caffe2/serialize/file_adapter.h"

namespace torch {
namespace jit {
using caffe2::serialize::FileAdapter;
using caffe2::serialize::IStreamAdapter;
using caffe2::serialize::ReadAdapterInterface;

std::shared_ptr<GenericInstructionList> loadInstructionList(
    std::unique_ptr<ReadAdapterInterface> rai,
    c10::optional<c10::Device> device = c10::nullopt);

std::shared_ptr<GenericInstructionList> loadInstructionList(
    std::istream& in,
    c10::optional<at::Device> device = c10::nullopt);

std::shared_ptr<GenericInstructionList> loadInstructionList(
    const std::string& filename,
    c10::optional<at::Device> device = c10::nullopt);

} // namespace jit
} // namespace torch
