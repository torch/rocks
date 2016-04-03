package = "optnet"
version = "scm-1"

source = {
   url = "git://github.com/fmassa/optimize-net",
   tag = "master"
}

description = {
   summary = "This package provides memory optimizations for nn library in Torch7.",
   homepage = "git://github.com/fmassa/optimize-net",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "graph",
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
