package = 'util'
version = '0-0'

source = {
    url = 'git://github.com/akfidjeland/lua-util',
    branch = 'master'
}

description = {
    summary = "Random utilities for Lua and Torch.",
    homepage = "https://github.com/akfidjeland/lua-util"
}

dependencies = { 'torch >= 7.0'}
build = {
    type = 'builtin',
    modules = {
        ['util.CSVFile'] = 'util/CSVFile.lua',
        ['util.arg'] = 'util/arg.lua',
        ['util.file'] = 'util/file.lua',
        ['util.init'] = 'util/init.lua',
        ['util.nan'] = 'util/nan.lua',
        ['util.queue'] = 'util/queue.lua',
        ['util.warn'] = 'util/warn.lua',
        ['util.warnself'] = 'util/warnself.lua',
    }
}
