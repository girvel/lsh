--- Tiny library encapsulating shell calls
-- Works like this:
-- lsh 'cat .temp'
-- lsh 'sudo aptitude update | sudo tee -a $APTITUDE_LOGS/update.txt'
-- local current_directory = lsh.PWD

local lsh = {}
local mt = {}
setmetatable(lsh, mt)


local call = function(source)
	local stream = io.popen(source)
	local result = stream:read "*a"
	stream:close()
	return result
end
	
--- Executes shell command and returns output
mt.__call = function(self, command)	
	return call(command), tonumber(call 'echo $?')
end

--- Returns system environment variable's value
mt.__index = function(self, index)
	return call('echo $' .. index)
end

return lsh
