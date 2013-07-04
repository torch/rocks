package = "inline-c"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---inline-C",
   tag = "1.0-0"
}

description = {
   summary = "A package to dynamically build and run C from within Lua",
   detailed = [[
Each function gets wrapped in it own little lua library which is then made accessible to the Lua runtime.
   ]],
   homepage = "https://github.com/clementfarabet/lua---inline-C",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
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
