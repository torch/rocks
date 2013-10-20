package = "dok"
version = "scm-1"

source = {
   url = "git://github.com/torch/dok.git",
}

description = {
   summary = "Support for the old torch7 dok system",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/dok",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "sundown >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      ["dok.init"] = "init.lua",
      ["dok.inline"] = "inline.lua",
   },
   install = {
      lua = {
--         ["dok.README"] = "README.md"
      }
   }
}
