package = 'fn'
version = '0-0'

source = {
    url = 'git://github.com/akfidjeland/lua-fn.git',
    branch = 'master'
}

description = {
    summary = "Some functional programming tools for Lua and Torch.",
    homepage = "https://github.com/akfidjeland/lua-fn.git"
}

dependencies = { 'torch >= 7.0', 'util', 'totem'}
build = {
    type = 'builtin',
    modules = {
        ['fn.init'] = 'fn/init.lua',
        ['fn.seq'] = 'fn/seq.lua'
    }
}
