package = "ncurses"
version = "scm-0"

source = {
   url = "git://github.com/ocallaco/lua-ncurses",
   branch = "master",
   dir = "lua-ncurses",
}

description = {
   summary = "A lua wrapper for ncurses",
   detailed = [[
A lua wrapper for ncurses
   ]],
   homepage = "https://github.com/ocallaco/lua-ncurses",
   license = "BSD"
}

dependencies = {
   "sys >= 1.0",
}

build = {
   type = "builtin",
   modules = {
      ['ncurses'] = './init.lua',
   }
}
