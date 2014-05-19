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
      ['redis-queue.regqueue'] = './queues/regqueue.lua',
      ['redis-queue.lbqueue'] = './queues/lbqueue.lua',
      ['redis-queue.delqueue'] = './queues/delqueue.lua',
      ['redis-queue.mrqueue'] = './queues/mrqueue.lua',
      ['redis-queue.mrbqueue'] = './queues/mrbqueue.lua',
      ['redis-queue.common'] = './common.lua',
      ['redis-queue.queuefactory'] = './queuefactory.lua',
   }
}
