package = 'strict'
version = '0-0'

source = {
  url = 'git://github.com/deepmind/strict.git',
  branch = 'master'
}

description = {
	summary = 'Detect reading of undeclared variables and creating of global variables',
  homepage = 'http://github.com/deepmind/strict.git'
}

dependencies = {}

build = {
  type = "builtin",
  modules = {
    ['strict'] = 'strict.lua'
  }
}
