package = "sndfile"
version = "scm-1"

source = {
   url = "git://github.com/andresy/lua---sndfile"
}

description = {
   summary = "libsndfile interface for Lua",
   detailed = [[
   ]],
   homepage = "https://github.com/andresy/lua---sndfile",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_INSTALL_PREFIX="$(PREFIX)",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/.."
      }
}
