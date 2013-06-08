package = "curl"
version = "0.1-0"

source = {
   url = "git://github.com/clementfarabet/curl",
   branch = "master",
}

description = {
   summary = "An interface to CURL.",
   detailed = [[
An interface to CURL.
   ]],
   homepage = "https://github.com/clementfarabet/curl",
   license = "BSD"
}

dependencies = {
   "luasocket >= 2.0.2",
   "lua-cjson >= 2.1.0",
   "sys >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      ['curl.init'] = 'init.lua',
   }
}
