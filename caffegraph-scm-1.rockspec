package = "caffegraph"
version = "scm-1"

source = {
  url = "git://github.com/nhynes/caffegraph",
  tag = "master"
}

description = {
  summary = "Load Caffe networks in Torch7",
  detailed = [[
  ]],
  homepage = "https://github.com/nhynes/caffegraph",
  license = "MIT"
}

dependencies = {
  "torch >= 7.0",
  "nn",
  "nngraph"
}

build = {
  type = "command",
  build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
install_command = "cd build && $(MAKE) install"
}
