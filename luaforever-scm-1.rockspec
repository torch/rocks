package = "luaforever"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/luaforever",
   branch = "master",
}

description = {
   summary = "Run a script forever.",
   detailed = [[
Run a script forever.
   ]],
   homepage = "https://github.com/clementfarabet/luaforever",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "linenoise >= 0.4",
   "penlight >= 1.1.0",
   "luafilesystem >= 1.6.2"
}

build = {
   type = "builtin",
   modules = {
   },
   install = {
      bin = {
         'luaforever'
      }
   }
}
