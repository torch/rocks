package = "buffer"
version = "scm-0"

source = {
   url = "git://github.com/clementfarabet/buffer",
   branch = "master"
}

description = {
   summary = "A buffer object for LuaJIT",
   detailed = [[
A buffer object for LuaJIT
   ]],
   homepage = "https://github.com/clementfarabet/buffer",
   license = "Apache"
}

dependencies = {
}

build = {
   type = "builtin",
   modules = {
      ['buffer.init'] = 'init.lua',
   }
}
