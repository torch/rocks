package = "gnuplot"
version = "scm-1"

source = {
   url = "git://github.com/torch/gnuplot.git",
}

description = {
   summary = "Torch interface to Gnuplot",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/gnuplot",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "torch >= 7.0",
   "paths >= 1.0",
}

build = {
   type = "builtin",
   modules = {
      ["gnuplot.init"] = "init.lua",
      ["gnuplot.gnuplot"] = "gnuplot.lua",
      ["gnuplot.hist"] = "hist.lua"
   },

   install = {
      lua = {
      -- this is ugly (but this is luarocks)
         ["gnuplot.README"] = "README.md",
         ["gnuplot.doc.plot_filled"] = "doc/plot_filled.png",
         ["gnuplot.doc.plot_hist"] = "doc/plot_hist.png",
         ["gnuplot.doc.plot_imagesc"] = "doc/plot_imagesc.png",
         ["gnuplot.doc.plot_sincos"] = "doc/plot_sincos.png",
         ["gnuplot.doc.plot_splot"] = "doc/plot_splot.png",
         ["gnuplot.doc.plot_splot2"] = "doc/plot_splot2.png",
         ["gnuplot.doc.plot_x"] = "doc/plot_x.png",
         ["gnuplot.doc.plot_xyf"] = "doc/plot_xyf.png"
      }
   }
}
