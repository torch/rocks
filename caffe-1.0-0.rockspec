package = "caffe"
version = "1.0-0"

source = {
   url = "git://github.com/szagoruyko/torch-caffe-binding",
   tag = "master"
}

description = {
   summary = "Use Caffe in Torch7",
   detailed = [[
A short binding to use Caffe as nn.Module in Torch7
   ]],
   homepage = "https://github.com/szagoruyko/torch-caffe-binding",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
