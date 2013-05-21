package = "restclient"
version = "0.1-0"

source = {
   url = "git://github.com/clementfarabet/restclient",
   branch = "master",
}

description = {
   summary = "A REST Client.",
   detailed = [[
A client to REST APIs.
   ]],
   homepage = "https://github.com/clementfarabet/restclient",
   license = "BSD"
}

dependencies = {
   "luasocket >= 2.0.2",
   "lua-cjson >= 2.1.0",
   "graphicsmagick >= 1.0.0",
}

build = {
   type = "builtin",
   modules = {
      ['restclient.init'] = 'init.lua',
      ['restclient.base64'] = 'base64.lua',
   }
}
