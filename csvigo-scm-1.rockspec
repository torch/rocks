package = "csvigo"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/lua---csv",
   tag = "master"
}

description = {
   summary = "A CSV library, for Torch",
   detailed = [[
A CSV read/write library for Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---csv",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
      type = "command",
      build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
        install_command = "cd build && $(MAKE) install"
}