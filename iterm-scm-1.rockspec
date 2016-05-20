package = "iterm"
version = "scm-1"

source = {
   url = "git://github.com/szagoruyko/iterm.torch",
}

description = {
   summary = "Display images directly in iTerm2",
   detailed = "Images, PDF, graphs, etc. via iTerm2 (OS X)",
   homepage = "https://github.com/szagoruyko/iterm.torch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "lbase64",
   "image",
}

build = {
   type = "builtin",
   modules = {
      ['iterm.init'] = 'init.lua',
      ['iterm.env'] = 'env.lua',
      ['iterm.dot'] = 'dot.lua',
      ['iterm.gnuplot'] = 'gnuplot.lua',
   }
}
