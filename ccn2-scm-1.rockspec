package = "ccn2"
version = "scm-1"

source = {
   url = "git://github.com/soumith/cuda-convnet2.torch.git",
}

description = {
   summary = "Torch7 bindings for cuda-convnet2 kernels!",
   detailed = [[
   All cuda-convnet2 modules exposed as nn.Module derivatives so 
   that they can be used with torch's neural network package
   ]],
   homepage = "https://github.com/soumith/cuda-convnet2.torch",
   license = "Apache 2.0"
}

dependencies = {
   "torch >= 7.0",
   "cutorch",
   "nn"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}