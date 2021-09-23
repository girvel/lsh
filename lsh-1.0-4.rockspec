package = "lsh"
version = "1.0-4"
source = {
   url = "git://github.com/girvel/lsh",
   tag = "1.0"
}
description = {
   homepage = "https://github.com/girvel/lsh",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      lsh = "src/lsh.lua"
   }
}
