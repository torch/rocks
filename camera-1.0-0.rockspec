package = "camera"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---camera",
   tag = "1.0-0"
}

description = {
   summary = "A simple wrapper package to give torch access to a webcam",
   detailed = [[
Uses OpenCV on MacOS and video4linux2 on Linux to proved the low level access to the camera hardware.
   ]],
   homepage = "https://github.com/clementfarabet/lua---camera",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "xlua >= 1.0",
   "sys >= 1.0",
}

build = {
   type = "cmake",
   variables = {
      LUAROCKS_PREFIX = "$(PREFIX)"
   }
}
