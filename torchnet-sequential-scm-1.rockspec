package = "torchnet-sequential"
version = "scm-1"

source = {
   url = "git://github.com/torchnet/sequential.git"
}

description = {
   summary = "A torchnet package for working with sequential data",
   detailed = [[
   A torchnet package for working with sequential data
   ]],
   homepage = "https://github.com/torchnet/sequential",
   license = "BSD"
}

dependencies = {
   "argcheck",
   "torchnet",
   "vector",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      LUA_PATH="$(LUADIR)",
      LUA_CPATH="$(LIBDIR)"
   }
}
