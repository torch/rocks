package = "schedlua"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/schedlua",
   branch = "master",
   dir = 'schedlua',
}

description = {
   summary = "A basic scheduler",
   detailed = [[
A basic scheduler.
   ]],
   homepage = "https://github.com/clementfarabet/schedlua",
   license = "BSD"
}

dependencies = {
   "sys >= 1.0",
   "trepl >= 0",
   "async >= 1.0",
   "penlight >= 1.1.0",
}

build = {
   type = "builtin",
   modules = {
   },
   install = {
      bin = {
         'schedlua'
      }
   }
}
