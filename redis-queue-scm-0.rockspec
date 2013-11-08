package = "redis-queue"
version = "scm-0"

source = {
   url = "git://github.com/ocallaco/redis-queue",
   branch = "master"
}

description = {
   summary = "A redis queue framework using async redis",
   detailed = [[
A redis queue framework using async redis
   ]],
   homepage = "https://github.com/ocallaco/redis-queue",
   license = "BSD"
}

dependencies = {
   "sys >= 1.0",
   "redis-async"
}

build = {
   type = "builtin",
   modules = {
      ['redis-queue.init'] = './init.lua',
      ['redis-queue.monitor'] = './monitor.lua',
      ['redis-queue.config'] = './config.lua',
   }
}
