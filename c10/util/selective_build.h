#pragma once

#include <c10/macros/Macros.h>
#include <c10/util/string_view.h>

namespace c10 {

namespace impl {

// returns true iff the semicolon separated list contains the item
// list_contains("a;bc;d", "bc") == true
constexpr bool list_contains(string_view list, string_view item) {
    //Choose a really big value for next so that if something goes wrong
    //this code will blow up in a hopefully detectable way.
    size_t next = std::numeric_limits<size_t>::max();
    for (size_t cur = 0; cur <= list.size(); cur = next) {
      next = list.find(';', cur);
      if (next != string_view::npos) {
        if (list.substr(cur, next - cur).compare(item) == 0) {
          return true;
        }
        next++;
      } else {
        if (list.substr(cur).compare(item) == 0) {
          return true;
        }
        break;
      }
    }
    return false;
}

} // namespace impl

} // namespace c10


#define STR(x) #x
#define IS_DEFINED(x) IS_DEFINED2(x)
// assuming defined macro always has lowercased value
#define IS_DEFINED2(x) (#x[0] == 0 || (#x[0] >= 'a' && #x[0] <= 'z'))
// undefined macro contains everything
#define macro_contains(MACRO, ITEM) (!IS_DEFINED2(MACRO) || c10::impl::list_contains(STR(MACRO), ITEM))
