package = "sys"
version = "1.1-0"

source = {
   url = "git://github.com/torch/sys"
}

description = {
   summary = "A system library for Torch",
   detailed = [[
Provides system functionalities for Torch.
   ]],
   homepage = "https://github.com/torch/sys",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[cmake -E make_directory build && cd build && cmake .. -DLUALIB=$(LUALIB) -DCMAKE_BUILD_TYPE=Release  -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)]],
   install_command = "cd build && $(MAKE) install"
}
