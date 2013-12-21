package = "fftw3"
version = "scm-1"

source = {
   url = "git://github.com/soumith/fftw3-ffi.git"
}

description = {
   summary = "A FFI interface to FFTW3",
   detailed = [[
   See http://www.fftw.org for more details.
   ]],
   homepage = "https://github.com/soumith/fftw3-ffi",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["fftw3.init"] = "init.lua",
      ["fftw3.cdefs"] = "cdefs.lua",
      ["fftw3.defines"] = "defines.lua"
   }      
}
