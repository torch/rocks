package = "cunnx"
version = "scm-1"

source = {
   url = "git://github.com/nicholas-leonard/cunnx.git",
}

description = {
   summary = "Torch CUDA Experimental Neural Network Modules",
   detailed = [[The CUDA analog of nnx. Also contains some CUDA-only modules.]],
   homepage = "https://github.com/nicholas-leonard/cunnx",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0",
   "cunn >= 1.0",
   "nnx >= 0.1",
   "cutorch >= 1.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
