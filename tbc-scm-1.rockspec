package = "tbc"
version = "scm-1"

source = {
   url = "git://github.com/gchanan/TemporalConvolutionTBC.git",
}

description = {
   summary = "Torch Temporal Convolution TBC Implementation",
   detailed = [[
   ]],
   homepage = "https://github.com/gchanan/TemporalConvolutionTBC",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "torch >= 7.0",
   "nn >= 1.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
