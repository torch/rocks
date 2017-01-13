package = "rainbowlog"
version = "1.0-0"

source = {
   url = "git://github.com/cdluminate/torch-rainbowlog",
   tag = "master",
}

description = {
   summary = "Colorful screen logging helper for Lua.",
   detailed = [[ Colorful screen logging helper for Lua. ]],
   homepage = "https://github.com/cdluminate/torch-rainbowlog",
   license = "MIT"
}

dependencies = { }

build = {
   type = "builtin",
   modules = {
      ['rainbowlog.init'] = 'init.lua',
   }
}
