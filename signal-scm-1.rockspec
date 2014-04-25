package = "signal"
version = "scm-1"

source = {
   url = "git://github.com/soumith/torch-signal.git"
}

description = {
   summary = "A signal processing toolbox for Torch-7",
   detailed = [[
   A signal processing toolbox for Torch-7
   ]],
   homepage = "https://github.com/soumith/torch-signal",
   license = "GPLV3"
}

dependencies = {
   "lua >= 5.1",
   "torch >= 7.0",
   "fftw3 >= 1.0"
}

build = {
   type = "builtin",
   modules = {
      ["signal.init"] = "init.lua",
      ["signal.complex"] = "complex.lua",
      ["signal.extramath"] = "extramath.lua"	
   }      
}
