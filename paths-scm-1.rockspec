package = "paths"
version = "scm-1"

source = {
   url = "git://github.com/torch/paths.git",
}

description = {
   summary = "Paths manipulations",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/paths",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DLUALIB=$(LUALIB) -DLUA_INCDIR="$(LUA_INCDIR)" -DLUA_LIBDIR="$(LUA_LIBDIR)" -DLUADIR="$(LUADIR)" -DLIBDIR="$(LIBDIR)" -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
