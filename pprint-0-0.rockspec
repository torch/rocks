package = 'pprint'
version = '0-0'

source = {
    url = 'git://github.com/akfidjeland/lua-pprint.git',
    branch = 'master'
}

description = {
    summary = "A pretty print library for Torch and lua.",
    homepage = "https://github.com/akfidjeland/lua-pprint.git"
}

dependencies = {'torch >= 7.0', 'util'}
build = {
    type = 'builtin',
    modules = {
        ['pprint.init'] = 'init.lua'
    }
}
