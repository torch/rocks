package = "torch-word-emb"
version = "1.4-0"
source = {
   url = "git://github.com/iamalbert/torch-word-emb",
   tag = "v1.4-0"
}
description = {
   summary = "load word2vec or glove word vectors to torch Tensor",
   detailed = [[
	load word2vec or glove word vectors to torch Tensor
   ]],
   homepage = "https://github.com/iamalbert/torch-word-emb",
   license = "BSD"
}
dependencies = {
   "torch >= 7.0"
}
build = {
   type = "make",
   build_variables = {
      CFLAGS = "-std=c99 -Wall -pedantic -O2 -I$(LUA_INCDIR)/TH -I$(LUA_INCDIR)",
      LIBFLAG = "$(LIBFLAG)",
      LUA = "$(LUA)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)"
   },
   install_variables = {
      BINDIR = "$(BINDIR)",
      CONFDIR = "$(CONFDIR)",
      LIBDIR = "$(LIBDIR)",
      LUADIR = "$(LUADIR)",
      PREFIX = "$(PREFIX)"
   }
}
