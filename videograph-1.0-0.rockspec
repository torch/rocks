package = "videograph"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/videograph",
   tag = "1.0-0"
}

description = {
   summary = "A video/graph library for Torch",
   detailed = [[
This package provides routines to construct graphs on videos,
segment them, build trees out of them, and convert them back
to videos.
   ]],
   homepage = "https://github.com/clementfarabet/videograph",
   license = "GPL"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0",
   "image >= 1.0",
   "imgraph >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      LUAROCKS_PREFIX = "$(PREFIX)"
   }
}
