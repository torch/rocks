#!/usr/bin/env luajit

require('pl.text').format_operator()

os.execute[[
git pull
]]

local command_line = require("luarocks.command_line")
commands = {}
commands.make_manifest = "luarocks.make_manifest"
command_line.run_command('make_manifest', '.')

content = io.open('index.html'):read('*all')
_,_,table = content:find('(%<table.*%<%/table%>)')

template = io.open('template.html'):read('*all')
result = template % {rocks = table}

io.open('index.html','w'):write(result)
