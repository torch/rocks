package = "fex"
version = "0.1-0"

source = {
   url = "git://github.com/koraykv/fex",
   tag = "master"
}

description = {
   summary = "A package for feature extraction in Torch",
   detailed = [[
Provides SIFT and dSIFT modules.
   ]],
   homepage = "https://github.com/koraykv/fex",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0"
}

build = {
   type = "cmake",
      variables = {
            LUAROCKS_PREFIX = "$(PREFIX)"
      }
}