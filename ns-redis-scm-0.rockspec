package = "ns-redis"
version = "scm-0"

source = {
   url = "git://github.com/ocallaco/ns-redis",
   branch = "master",
   dir = "redis-async",
}

description = {
   summary = "A layer on top of redis-async to allow automatic use of namespaces",
   detailed = [[
A layer on top of redis-async to allow automatic use of namespaces
   ]],
   homepage = "https://github.com/ocallaco/ns-redis",
   license = "BSD"
}

dependencies = {
   "redis-async",
}

build = {
   type = "builtin",
   modules = {
      ['ns-redis'] = './ns-redis.lua',
   }
}
