package = 'pretty-nn'
version = 'scm-1'

source = {url = 'git://github.com/Atcold/torch-pretty-nn'}

description = {
   summary = 'Brings some colours to the borin nn',
   detailed = [[
   It allows to make sense of your architecture when things start growing to a
   reasonable size.
   ]]
}

dependencies = {
   'torch >= 7.0',
   'nn >= 1.0'
}

build = {
   type = 'builtin',
   modules = {
      ['pretty-nn.init'] = 'init.lua'
   }
}
