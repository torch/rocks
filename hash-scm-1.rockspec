package = "hash"
version = "scm-1"

source = {
   url = "git://github.com/torch/hash.git"
}

description = {
   summary = "Hash for Torch",
   detailed = [[
   Hashing stuff.
   ]],
   homepage = "https://github.com/torch/hash",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "torch >= 7.0",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
