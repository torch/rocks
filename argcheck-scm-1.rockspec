package = "argcheck"
version = "scm-1"

source = {
   url = "git://github.com/torch/argcheck.git"
}

description = {
   summary = "Advanced function argument checker",
   detailed = [[
   Argcheck allows you to insure arguments given to a function are correct.
   Checks are compiled beforehand, which guarantees little overheads.
   ]],
   homepage = "https://github.com/torch/argcheck",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["argcheck.init"] = "init.lua",
      ["argcheck.argtypes"] = "argtypes.lua"
   }      
}
