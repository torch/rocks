package = "svm"
version = "0.1-0"

source = {
   url = "git@github.com:koraykv/torch-svm.git",
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
   type = "cmake",
   variables = {
   LUAROCKS_PREFIX = "$(PREFIX)"
   }
}
