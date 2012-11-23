package = "csv"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---csv",
   tag = "1.0-0"
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
      ['csv.init'] = 'init.lua',
      ['csv.File'] = 'File.lua'
   }
}
