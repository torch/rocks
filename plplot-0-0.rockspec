package = "plplot"
version = "0-0"

source = {
  url = 'git://github.com/deepmind/plplot-ffi.git',
  branch = 'master'
}

description = {
  summary = "A FFI interface to PLplot",
  homepage = "https://github.com/deepmind/plplot-ffi"
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["plplot"] = "init.lua",
    ["plplot.api"] = "api.lua",
    ["plplot.cdefs"] = "cdefs.lua"
  }
}
