package = "ffmpeg"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---ffmpeg",
}

description = {
   summary = "An FFMPEG interface for Torch",
   detailed = [[
A simple abstraction class, that uses ffmpeg to encode/decode videos,
and represent them as Tensors, in Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---ffmpeg",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "image >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      ['ffmpeg.init'] = 'init.lua',
   }
}
