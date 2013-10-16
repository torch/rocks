package = "persist"
version = "scm-0"

source = {
   url = "git://github.com/clementfarabet/persist",
   branch = "master",
}

description = {
   summary = "A persisting table, built on Redis.",
   detailed = [[
A persisting table, built on Redis.
   ]],
   homepage = "https://github.com/clementfarabet/persist",
   license = "BSD"
}

dependencies = {
   "redis-lua >= 2.0.0",
   "lua-cjson >= 2.1.0",
   "sys >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      ['persist.init'] = 'init.lua',
   }
}
