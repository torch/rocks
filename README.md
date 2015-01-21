Rocks
=====

This is the official rock server for the Torch ecosystem. Note that all
these rocks are installable with [Luarocks](http://luarocks.org/), but
most of them assume [LuaJIT](http://luajit.org/).

Please refer to [the Torch portal](http://torch.github.io/) for more info
on Torch.

If you want to contribute and share some code, just create a rock for it, and
make a pull request to this repo. When commiting your rocks, you should also
run the script [make-manifest.lua](https://github.com/torch/rocks/blob/master/make-manifest.lua),
provided in this repo, to update the manifest and the html summary. The summary
is viewable at all times [here](http://htmlpreview.github.io/?https://github.com/torch/rocks/blob/master/index.html).

Make sure your [luajit-rocks](https://github.com/torch/luajit-rocks) is up to date 
as you will require luarocks `version > 2.2` to make the manifest.
