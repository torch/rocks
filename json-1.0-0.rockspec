package = "json"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---json",
   tag = "1.0-0"
}

description = {
   summary = "A JSON library, modified from JSON4Lua, for Torch",
   detailed = [[
A JSON read/write library for Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---json",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
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
