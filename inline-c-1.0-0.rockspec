package = "inline-c"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---inline-C",
   tag = "1.0-0"
}

description = {
   summary = "A package to dynamically build and run C from within Lua",
   detailed = [[
Each function gets wrapped in it own little lua library which is then made accessible to the Lua runtime.
   ]],
   homepage = "https://github.com/clementfarabet/lua---inline-C",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
}

build = {
   type = "cmake",
   variables = {
      LUAROCKS_PREFIX = "$(PREFIX)"
   }
}
