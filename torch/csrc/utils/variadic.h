#pragma once

#include <ATen/ATen.h>
//#include <torch/csrc/autograd/variable.h>

#include <cstdint>
#include <tuple>
#include <type_traits>
#include <utility>

namespace torch {

// This class allows you to write variadic functions which
// call a (possibly overloaded) function on each argument,
// in order.  This is most commonly used in autogenerated code,
// where it is convenient to have a function that can uniformly
// take arguments of different types.  If your arguments
// are homogenous consider using a std::initializer_list instead.
template <typename F>
struct IterArgs {
  template <typename... Args>
  inline F& apply() {
    return self();
  }

  // NB: Use perfect forwarding here, otherwise we'll make value
  // copies of all arguments!
  template <typename T, typename... Args>
  inline F& apply(T&& arg, Args&&... args) {
    self()(std::forward<T>(arg));
    if (self().short_circuit()) {
      return self();
    } else {
      return apply(std::forward<Args>(args)...);
    }
  }

  // Here are some handy overloads which provide sensible
  // defaults for container-like structures that one might
  // be interested in recursing into.  You can enable them
  // by adding:
  //
  //    using IterArgs<YourStructName>::operator()
  //
  // to your struct.  These are not enabled by default because
  // you may be able to process these structures more efficiently
  // than handling them one-by-one.

  template <typename T>
  void operator()(at::ArrayRef<T> args) {
    for (const auto& arg : args) {
      self()(arg);
      if (short_circuit())
        return;
    }
  }

  // NB: we need to specify std::vector manually as C++ won't
  // do an implicit conversion to make a template deduction go through.
  template <typename T>
  void operator()(const std::vector<T>& args) {
    self()(at::ArrayRef<T>{args});
  }

  bool short_circuit() {
    return false;
  }

 private:
  inline F& self() {
    return *static_cast<F*>(this);
  }
};

struct CountTensors : IterArgs<CountTensors> {
  size_t out = 0;
  void operator()(const at::Tensor& x) {
    out += 1;
  }
  void operator()(at::ArrayRef<at::Tensor> xs) {
    out += xs.size();
  }
};

template <typename... Args>
size_t count_tensors(Args&&... args) {
  return CountTensors().apply(std::forward<Args>(args)...).out;
}

#if 0
struct CountVariables : IterArgs<CountVariables> {
  size_t out = 0;
  void operator()(const autograd::Variable& x) {
    out += 1;
  }
  void operator()(at::ArrayRef<autograd::Variable> xs) {
    out += xs.size();
  }
};

template <typename... Args>
inline size_t count_variables(Args&&... args) {
  return CountVariables().apply(std::forward<Args>(args)...).out;
}
#endif

//===----------------------------------------------------------------------===//
//                std::index_sequence shim for C++11
//===----------------------------------------------------------------------===//

// A container of type-template parameter indices.
template <size_t... Is>
struct Indices {};

// Decrements the index N, adds N-1 to the list of indices and forwards
// whatever we arleady have.
template <size_t N, size_t... Is>
struct MakeIndices : MakeIndices<N - 1, N - 1, Is...> {};

// Partial specialization that forms our base case. When N is zero, we stop
// and define a typedef that will be visible to earlier classes due to
// inheritance. The typedef we define is an index list containing the numbers
// 0 through N-1.
template <size_t... Is>
struct MakeIndices<0, Is...> {
  using indices = Indices<Is...>;
};

//===----------------------------------------------------------------------===//
//                                 Utilities
//===----------------------------------------------------------------------===//

template <bool value, typename T = void>
using enable_if_t = typename std::enable_if<value, T>::type;

template <bool value, typename T = void>
using disable_if_t = enable_if_t<!value, T>;

template <typename T>
using decay_t = typename std::decay<T>::type;

namespace detail {
template <bool...>
struct pack;
} // namespace detail

template <bool... values>
struct all_of : std::is_same<
                    detail::pack<values..., true>,
                    detail::pack<true, values...>> {};

template <bool...>
struct any_of;

template <>
struct any_of<> : std::false_type {};

template <bool head, bool... tail>
struct any_of<head, tail...> {
  static constexpr bool value = head || any_of<tail...>::value;
};

template <bool... values>
struct none_of {
  static constexpr bool value = !any_of<values...>::value;
};

template <bool... values>
using enable_if_all_of_t = enable_if_t<all_of<values...>::value>;

template <typename T, typename... Ts>
using disable_if_contains_t =
    enable_if_all_of_t<(!std::is_same<T, decay_t<Ts>>::value)...>;

template <typename Function, typename... Ts>
void apply(Function function, Ts&&... ts) {
  // https://stackoverflow.com/questions/13978916/inserting-a-variadic-argument-list-into-a-vector
  // Creates a dummy array, so that each function call is evaluated in order.
  // `(function(), 0)` is because `function` should (!) return `void`, so
  // according to the comma operator, it is evaluated and its result (`void`)
  // is discarded. Then the zero is evaluated and used as an element in the
  // array. The first zero ensures the array is not empty.
  int _[]{0, (function(std::forward<Ts>(ts)), 0)...};
  (void)_;
}

template <typename ReturnType, typename... Ts, typename Function, typename Accessor>
ReturnType unpack(Function function, Accessor accessor) {
  return ReturnType(unpack<ReturnType, Ts...>(
      std::move(function),
      std::move(accessor),
      typename MakeIndices<sizeof...(Ts)>::indices()));
}

template <typename ReturnType, typename... Ts, typename Function, typename Accessor, size_t... Is>
ReturnType unpack(Function function, Accessor accessor, Indices<Is...>) {
  return ReturnType(function(accessor.template operator()<Ts>(Is)...));
}
} // namespace torch
