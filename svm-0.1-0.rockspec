package = "svm"
version = "0.1-0"

source = {
   url = "https://github.com/koraykv/torch-svm",
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
                make . -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)";
                $(MAKE)
           ]],
   install_command = "$(MAKE) install"
}
