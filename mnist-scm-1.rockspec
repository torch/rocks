package = "mnist"
version = "scm-1"

source = {
   url = "git://github.com/andresy/mnist.git"
}

description = {
   summary = "Mnist dataset",
   detailed = [[
   ]],
   homepage = "https://github.com/andresy/mnist",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "paths >= 1.0",
}

build = {
   type = "builtin",
   modules = {
      ["mnist.init"] = "init.lua"
   },

   install = {
      lua = {
         -- this is ugly (but this is luarocks)
         ["mnist.data.train-images-idx3-ubyte"] = "data/train-images-idx3-ubyte",
         ["mnist.data.train-labels-idx1-ubyte"] = "data/train-labels-idx1-ubyte",
         ["mnist.data.t10k-images-idx3-ubyte"] = "data/t10k-images-idx3-ubyte",
         ["mnist.data.t10k-labels-idx1-ubyte"] = "data/t10k-labels-idx1-ubyte"
      }
   }
}
