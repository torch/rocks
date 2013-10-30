package = "redis-async"
version = "scm-0"

source = {
   url = "git://github.com/ocallaco/redis-async",
   branch = "master",
   dir = "redis-async",
}

description = {
   summary = "A redis client built off the torch/lua async framework",
   detailed = [[
A redis client built off the torch/lua async framework
   ]],
   homepage = "https://github.com/ocallaco/redis-async",
   license = "BSD"
}

dependencies = {
   "async",
   "sys >= 1.0",
   "buffer",
}

build = {
   type = "builtin",
   modules = {
      ['redis-async.init'] = 'init.lua',
      ['redis-async.redis_conn'] = 'redis_conn.lua',
      ['redis-async.codec'] = 'codec.lua',
      ['redis-async.commands'] = 'commands.lua',
   }
}
