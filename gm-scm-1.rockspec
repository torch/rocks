package = "gm"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/gm",
   branch = "master"
}

description = {
   summary = "A graphical model library for Torch",
   detailed = [[
This package provides routines to create graphical models,
and perform common operations on them: decoding, inference, and parameter estimation.
   ]],
   homepage = "https://github.com/clementfarabet/gm",
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
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
