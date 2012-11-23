package = "sys"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---sys"
}

description = {
   summary = "A system library for Torch",
   detailed = [[
Provides system functionalities for Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---sys",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "cmake",
   variables = {
      LUAROCKS_PREFIX = "$(PREFIX)"
   }
}
