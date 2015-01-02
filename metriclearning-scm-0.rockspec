package = "metriclearning"
version = "scm-0"

source = {
   url = "git://github.com/lvdmaaten/metriclearning"
}

description = {
   summary = "A package for metric learning",
   detailed = [[
A package for metric learning.
   ]],
   homepage = "https://github.com/lvdmaaten/metriclearning",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
   "mnist",
   "optim",
}

build = {
   type = "builtin",
   modules = {
       ['metriclearning.init'] = 'init.lua',
       ['metriclearning.nca']  = 'nca.lua',
       ['metriclearning.lmnn'] = 'lmnn.lua',
       ['metriclearning.itml'] = 'itml.lua'
   }
}