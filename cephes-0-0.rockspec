package = 'cephes'
version = '0-0'

source = {
   url = 'git://github.com/jucor/torch-cephes.git',
   branch = 'master'
}

description = {
  summary = "Cephes mathematical functions library, wrapped for Torch",
  homepage = "http://www.netlib.org/cephes/"
}

dependencies = { 'torch >= 7.0'}
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
