package = "lsh"
version = "1.0-3"
source = {
   url = "https://github.com/girvel/lsh"
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
