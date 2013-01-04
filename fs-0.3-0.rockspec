package = 'fs'
version = '0.3-0'

source = {
   url = 'git://github.com/clementfarabet/lua-fs-0.3.git',
   branch = 'master'
}

description = {
  summary = "File system toolbox",
  homepage = "https://github.com/clementfarabet/lua-fs-0.3"
}

dependencies = { 'torch >= 7.0'}
build = {
  type = "cmake",
  variables = {
    LUAROCKS_PREFIX="$(PREFIX)",
    WITH_LUA_JIT="$(WITH_LUA_JIT)"
  }
}
