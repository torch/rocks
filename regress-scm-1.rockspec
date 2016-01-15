package = "regress"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/regress.git",
   branch = "master",
}

description = {
   summary = "Regression tests made easy",
   homepage = "https://github.com/clementfarabet/regress",
   license = "Twitter"
}

dependencies = {
   "torch >= 7.0",
   "trepl",
}

build = {
   type = "builtin",
   modules = {
      ['regress.init'] = 'init.lua',
   },
}
