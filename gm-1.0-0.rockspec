package = "gm"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---gm",
   tag = "1.0-0"
}

description = {
   summary = "A graphical model library for Torch",
   detailed = [[
This package provides routines to create graphical models,
and perform common operations on them: decoding, inference, and parameter estimation.
   ]],
   homepage = "https://github.com/clementfarabet/lua---gm",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      LUAROCKS_PREFIX = "$(PREFIX)"
   }
}
