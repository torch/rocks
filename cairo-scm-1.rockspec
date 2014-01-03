package = "cairo"
version = "scm-1"

source = {
   url = "git://github.com/torch/cairo-ffi.git"
}

description = {
   summary = "A FFI interface to Cairo Graphics",
   detailed = [[
   See http://cairographics.org for more details.
   ]],
   homepage = "https://github.com/torch/cairo-ffi",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["cairo.init"] = "init.lua",
      ["cairo.cdefs"] = "cdefs.lua",
      ["cairo.shorthand"] = "shorthand.lua",
      ["cairo.path"] = "path.lua",
      ["cairo.cairo"] = "cairo.lua",
      ["cairo.surface"] = "surface.lua",
      ["cairo.pattern"] = "pattern.lua",
      ["cairo.region"] = "region.lua",
      ["cairo.matrix"] = "matrix.lua"
   }      
}
