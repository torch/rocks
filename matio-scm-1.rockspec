package = "matio"
version = "scm-1"

source = {
   url = "git://github.com/soumith/matio-ffi.torch.git"
}

description = {
   summary = "A FFI interface to MATIO and simple bindings for torch",
   detailed = [[
   See http://matio.sourceforge.net for more details.
   ]],
   homepage = "https://github.com/soumith/matio-ffi.torch",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "torch >= 7.0"
}

build = {
   type = "builtin",
   modules = {
      ["matio.init"] = "init.lua",
      ["matio.ffi"] = "ffi.lua",
      ["matio.cdefs"] = "cdefs.lua",
      ["matio.defines"] = "defines.lua"
   }      
}
