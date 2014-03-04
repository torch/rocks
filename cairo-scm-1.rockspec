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
   "argcheck ~> 0.5",
   "class >= 1"
}

build = {
   type = "builtin",
   modules = {
      ["cairo.env"] = "env.lua",
      ["cairo.init"] = "init.lua",
      ["cairo.enums"] = "enums.lua",
      ["cairo.matrix"] = "matrix.lua",
      ["cairo.utils"] = "utils.lua",
      ["cairo.cdefs"] = "cdefs.lua",
      ["cairo.context"] = "context.lua",
      ["cairo.surface"] = "surface.lua",
      ["cairo.imagesurface"] = "imagesurface.lua",
      ["cairo.pngsurface"] = "pngsurface.lua",
      ["cairo.pattern"] = "pattern.lua",
      ["cairo.region"] = "region.lua",
      ["cairo.fontoptions"] = "fontoptions.lua",
      ["cairo.path"] = "path.lua",
      ["cairo.fontface"] = "fontface.lua",
      ["cairo.svgsurface"] = "svgsurface.lua",
      ["cairo.pdfsurface"] = "pdfsurface.lua"
   }
}
