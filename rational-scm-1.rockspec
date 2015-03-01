package = "rational"
version = "scm-1"

source = {
   url = "git://github.com/torch/rational.git"
}

description = {
   summary = "rational numbers for lua",
   detailed = [[
   Implements rational number operations (with appropriate operators).
   ]],
   homepage = "https://github.com/torch/rational",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "argcheck >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      rational = "rational.lua"
   }      
}
