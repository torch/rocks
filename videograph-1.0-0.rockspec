package = "videograph"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/videograph",
   tag = "1.0-0"
}

description = {
   summary = "A video/graph library for Torch",
   detailed = [[
This package provides routines to construct graphs on videos,
segment them, build trees out of them, and convert them back
to videos.
   ]],
   homepage = "https://github.com/clementfarabet/videograph",
   license = "GPL"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0",
   "image >= 1.0",
   "imgraph >= 1.0"
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
