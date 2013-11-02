package = 'randomkit'
version = '0-0'

source = {
   url = 'git://github.com/jucor/torch-randomkit.git',
   branch = 'master'
}

description = {
  summary = "Numpy's randomkit, wrapped for Torch",
  homepage = "https://jucor.github.io/torch-randomkit"
}

dependencies = { 'torch >= 7.0', 'cephes'}
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
