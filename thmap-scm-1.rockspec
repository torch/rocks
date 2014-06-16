package = "thmap"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/thmap",
   branch = "master",
}

description = {
   summary = "Map jobs onto th nodes.",
   detailed = [[
Map jobs onto th nodes.
   ]],
   homepage = "https://github.com/clementfarabet/thmap",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "trepl>= 1.0",
   "async >= 1.0",
}

build = {
   type = "builtin",
   modules = {
      ['thmap.node'] = './node/init.lua',
   },
   install = {
      bin = {
         'thmap',
         'thnode',
      },
   }
}
