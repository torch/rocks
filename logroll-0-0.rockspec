package = 'logroll'
version = '0-0'

source = {
    url = 'git://github.com/akfidjeland/logroll.git',
    branch = 'master'
}

description = {
    summary = "A basic logging library for Lua and Torch.",
    homepage = "https://github.com/akfidjeland/logroll.git"
}

dependencies = { 'torch >= 7.0', 'fn', 'paths', 'pprint'}
build = {
    type = "builtin",
    modules = {
        ['logroll.init'] = 'logroll/init.lua'
    }
}
