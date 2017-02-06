package = "multiprogress"
version = "1.0-0"

source = {
   url = "git://github.com/ClementPinard/multiprogress"
}

description = {
   summary = "Advanced progress bar routines for thorough info logging.",
   detailed = [[
Widely inspired from xlua's progress function:
this package extends the progress function and allows you to log info on several lines
and multiple progress bars, to keep track of the info you need.
   ]],
   homepage = "https://github.com/ClementPinard/multiprogress",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      ['multiprogress.init'] = 'init.lua',
   }
}
