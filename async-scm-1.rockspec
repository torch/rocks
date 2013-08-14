package = "async"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/async",
}

description = {
   summary = "An async framework for Torch (based on LibUV)",
   detailed = [[
Async framework for Torch, based on LibUV.
   ]],
   homepage = "https://github.com/clementfarabet/async",
   license = "BSD"
}

dependencies = {
   "torch >= 7.1.alpha",
}

build = {
   type = "command",
   build_command = "$(MAKE)",
   install_command = [[
$(MAKE)
cp couv.lua async.lua $(LUADIR)/
cp couv_native.so lhttp_parser.so $(LIBDIR)/
   ]]
}
