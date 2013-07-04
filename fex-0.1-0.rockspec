package = "fex"
version = "0.1-0"

source = {
   url = "git://github.com/koraykv/fex",
   tag = "master"
}

description = {
   summary = "A package for feature extraction in Torch",
   detailed = [[
Provides SIFT and dSIFT modules.
   ]],
   homepage = "https://github.com/koraykv/fex",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0"
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
