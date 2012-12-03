package = "xlua"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---xlua",
   tag = "1.0-0"
}

description = {
   summary = "Some extensions to the basic Lua packages",
   detailed = [[
Some extensions to the basic Lua packages.
   ]],
   homepage = "https://github.com/clementfarabet/lua---xlua",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      ['xlua.init'] = 'init.lua',
      ['xlua.OptionParser'] = 'OptionParser.lua',
      ['xlua.Profiler'] = 'Profiler.lua',
   }
}
