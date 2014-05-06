package = "env"
version = "scm-1"

source = {
   url = "git://github.com/torch/env.git",
}

description = {
   summary = "Environment setup for Torch",
   detailed = [[
Adds pretty printing and additional path handling to luajit
   ]],
   homepage = "https://github.com/torch/env",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "gnuplot",
   "dok"
}

build = {
   type = "builtin",
   modules = {
      ['env.init'] = 'init.lua',
   }
}
