package = "rq-monitor"
version = "scm-0"

source = {
   url = "git://github.com/ocallaco/rq-monitor",
   branch = "master",
   dir = "rq-monitor",
}

description = {
   summary = "An ncurses based interface for managing redis-queue workers",
   detailed = [[
   An ncurses based interface for managing redis-queue workers
   ]],
   homepage = "https://github.com/ocallaco/rq-monitor",
   license = "BSD"
}

dependencies = {
   "async",
   "sys >= 1.0",
   "redis-status",
}

build = {
   type = "builtin",
   modules = {
      ['rq-monitor'] = './monitor.lua',
      ['rq-monitor.io'] = './io.lua',
      ['rq-monitor.replmananger'] = './replmanager.lua',
      ['rq-monitor.windowbox'] = './windowbox.lua',
      ['rq-monitor.config'] = './config.lua',
   }
}
