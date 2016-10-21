package = "notifycenter"
version = "0.0-1"
source = {
   url = "git://github.com/aminert/notifycenter-lua",
   tag = "v0.0-1",
}
description = {	
   summary = "Notify Center is the easiest way to push notifications to your iPhone form Lua.",
   detailed = [[
      Notify Center is the easiest way to push notifications to your iPhone from major Deep Learning frameworks...with a single line of code!
   ]],
   homepage = "http://notify.center",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luacurl >=1.2.1-1",
   "lua-cjson >=2.1.0-1"
}
build = {
   type = "builtin",
   modules = {
      ['notifycenter'] = 'notifycenter.lua',
   }
}

