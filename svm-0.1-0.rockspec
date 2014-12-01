package = "svm"
version = "0.1-0"

source = {
   url = "git://github.com/koraykv/torch-svm.git",
   tag = "master"
}

description = {
   summary = "Torch-SVM library",
   detailed = [[
Torch-SVM library
   ]],
   homepage = "https://github.com/koraykv/torch-svm",
   license = "BSD"
   }

dependencies = {
   "torch >= 7.0",
   "xlua >= 1.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DLUA=$(LUA) -DLUALIB=$(LUALIB) -DLUA_BINDIR="$(LUA_BINDIR)" -DLUA_INCDIR="$(LUA_INCDIR)" -DLUA_LIBDIR="$(LUA_LIBDIR)" -DLUADIR="$(LUADIR)" -DLIBDIR="$(LIBDIR)" -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
