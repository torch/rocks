package = "mattorch"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---mattorch",
   tag = "1.0-0"
}

description = {
   summary = "An interface between Matlab and Torch",
   detailed = [[
A two-way interface between Matlab and Torch.
Supports all Matrix types in Matlab, as long as they have an
equivalent in Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---mattorch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0"
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
