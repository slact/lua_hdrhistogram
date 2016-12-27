#!/bin/lua
package = "hdrhistogram"
version = "0.1.0-1"
source = {
  url="git://github.com/slact/lua_hdrhistogram",
  tag="v0.1.0"
}
description = {
  summary = "Lua library wrapping HdrHistogram_c ",
  detailed = [[ 
HdrHistogram is an algorithm designed for recording histograms of value measurements with configurable precision. Value precision is expressed as the number of significant digits, providing control over value quantization and resolution whilst maintaining a fixed cost in both space and time. This library wraps the C port. ]],
  homepage = "https://github.com/hynd/lua_hdrhistogram",
  license = "MPL"
}
dependencies = {
  "lua >= 5.1, < 5.4",
}
build = {
  type = "builtin",
  modules = {
    hdrhistogram = {
      sources = {"hdr_histogram.c", "lua_hdrhistogram.c"},
    }
  }
}
