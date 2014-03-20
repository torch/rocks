package = "eex"
version = "1.0-0"

source = {
   url = "git://github.com/e-lab/eex",
   tag = "master"
}

description = {
   summary = "Torch extras from e-Lab",
   detailed = [[
This is a Torch extra package from e-Lab.
   ]],
   homepage = "https://github.com/e-lab/eex",
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
