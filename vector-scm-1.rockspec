package = "vector"
version = "scm-1"

source = {
   url = "git://github.com/torch/vector.git"
}

description = {
   summary = "Tensor-based vector implementations.",
   detailed = [[
      Three tensor-based vector implementations: vector.tensor, vector.atomic,
      and vector.string.
   ]],
   homepage = "https://github.com/torch/vector",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "torch >= 7.0",
   "luaffi >= 1.0",
   "tds >= 1.0",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      LUA_PATH="$(LUADIR)",
      LUA_CPATH="$(LIBDIR)"
   }
}
