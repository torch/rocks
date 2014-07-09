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

-- build = {
--    type = "cmake",
--    variables = {
--       LUAROCKS_PREFIX = "$(PREFIX)"
--    }
-- }

build = {
   type = "command",
   build_command = [[
      cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
      ]],
   install_command = "cd build && $(MAKE) install"
}
