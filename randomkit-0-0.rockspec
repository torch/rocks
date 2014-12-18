package = 'randomkit'
version = '0-0'

source = {
   url = 'git://github.com/deepmind/torch-randomkit.git',
   branch = 'v0.0'
}

description = {
  summary = "Numpy's randomkit, wrapped for Torch",
  homepage = "https://github.com/deepmind/torch-randomkit",
  detailed = "Provides and wraps the wide array of non-uniform random variate generators from the Randomkit C library, used at the heart of NumPy and distributed with permission. Interfaced with Torch's RNG functions to keep one single stream.",
  license = "BSD",
  maintainer = "Julien Cornebise <julien@cornebise.com>"
}

dependencies = {'torch >= 7.0', 'cephes'}
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
