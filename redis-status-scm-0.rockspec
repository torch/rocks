package = "redis-status"
version = "scm-0"

source = {
   url = "git://github.com/ocallaco/redis-status",
   branch = "master",
   dir = "redis-status",
}

description = {
   summary = "A system for managing and statusing applications remotely via redis",
   detailed = [[
A system for managing and statusing applications remotely via redis
   ]],
   homepage = "https://github.com/ocallaco/redis-status",
   license = "BSD"
}

dependencies = {
   "async",
   "sys >= 1.0",
   "thmap",
   "redis-async",
}

build = {
   type = "builtin",
   modules = {
      ['redis-status'] = './init.lua',
      ['redis-status.server'] = './server/init.lua',
      ['redis-status.node'] = './node/init.lua',
      ['redis-status.api'] = './api/init.lua',
      ['redis-status.protocol'] = './protocol/init.lua',
   }
}
