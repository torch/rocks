package = "csvigo"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/lua---csv",
   tag = "master"
}

description = {
   summary = "A CSV library, for Torch",
   detailed = [[
A CSV read/write library for Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---csv",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "builtin",
   modules = {
      ['csvigo.init'] = 'init.lua',
      ['csvigo.File'] = 'File.lua'
   }
}
