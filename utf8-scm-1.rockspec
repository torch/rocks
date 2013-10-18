package = "utf8"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/lua-utf8",
}

description = {
   summary = "Basic UTF-8 support.",
   detailed = [[
Basic UTF-8 support.
   ]],
   homepage = "https://github.com/clementfarabet/lua-utf8",
   license = "BSD"
}

dependencies = {
}

build = {
   type = "builtin",
   modules = {
      ['utf8'] = 'utf8.lua',
   }
}
