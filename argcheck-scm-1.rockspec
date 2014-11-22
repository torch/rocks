package = "argcheck"
version = "scm-1"

source = {
   url = "git://github.com/torch/argcheck.git"
}

description = {
   summary = "Advanced function argument checker",
   detailed = [[
Argcheck generates specific code for checking arguments of a function. This
allows complex argument checking (possibly with optional values), with almost
no overhead.
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
      ["argcheck.graph"] = "graph.lua",
      ["argcheck.env"]  = "env.lua",
      ["argcheck.utils"]  = "utils.lua",
      ["argcheck.doc"]  = "doc.lua",
      ["argcheck.dump"]  = "dump.lua",
      ["argcheck.usage"]  = "usage.lua"
   }      
}
