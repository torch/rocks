package = "sundown"
version = "scm-1"

source = {
   url = "git://github.com/torch/sundown-ffi.git"
}

description = {
   summary = "A FFI interface to the Markdown implementation of the Sundown library",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/sundown-ffi",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   install = {
      bin = {
         mdcat = "mdcat.lua"
      }
   },
   modules = {
      ["sundown.env"] = "env.lua",
      ["sundown.init"] = "init.lua",
      ["sundown.sdcdefs"] = "sdcdefs.lua",
      ["sundown.htmlcdefs"] = "htmlcdefs.lua",
      ["sundown.html"] = "html.lua",
      ["sundown.ascii"] = "ascii.lua",
      libsundown = {
         sources = {
            "src/autolink.c",
            "src/buffer.c",
            "src/markdown.c",
            "src/stack.c",
            "html/houdini_href_e.c",
            "html/houdini_html_e.c",
            "html/html.c",
            "html/html_smartypants.c"
         },
         incdirs = {
            "src/",
            "html/"
         }
      }
   }
}
