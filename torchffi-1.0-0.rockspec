package = "torchffi"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/torchffi",
   tag = "1.0-0"
}

description = {
   summary = "Enables FFI bindings for Torch",
   detailed = [[
Enables FFI bindings for Torch (Tensor). It requires Torch to be built
with LuaJIT.
   ]],
   homepage = "https://github.com/clementfarabet/torchffi",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "builtin",
   modules = {
      ['torchffi.init'] = 'init.lua',
   }
}
