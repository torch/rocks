package = "socketfile"
version = "scm-1"

source = {
   url = "git://github.com/torch/socketfile.git"
}

description = {
   summary = "File-over-socket support for Torch",
   detailed = [[
   Adds torch.SocketFile and torch.SocketFileServer classes to Torch.
   ]],
   homepage = "https://github.com/torch/socketfile",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "luasocket >= 1.0",
   "argcheck >= 1.0",
   "torch"
}

build = {
   type = "builtin",
   modules = {
      ["socketfile.init"] = "init.lua",
      ["socketfile.socketfile"] = "socketfile.lua",
      ["socketfile.socketfileserver"] = "socketfileserver.lua",
      ["socketfile.transfer"] = "transfer.lua",
   }      
}
