# lsh

Lsh (littleshell) is the tiniest possible library to work with Linux shell. It provides functionality to work with commands and with environment's variables. 

```lua
local lsh = require 'lsh'
local hw, success = lsh 'echo "Hello world!"'
local path_to_shell = lsh.SHELL
```

## Installation

```bash
git clone https://github.com/girvel/lsh
cd lsh
sudo luarocks build
```

## Usage

```lua
lsh '<any shell command>'  # makes a shell call, returns its output, exit code
lsh.<variable>             # returns environment variable's value
```
