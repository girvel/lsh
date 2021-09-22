--- lsh (littleshell) - tiny library encapsulating shell calls
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
	
--- Executes shell command
-- @param self lsh module
-- @param command shell command
-- @return command's output, exit code as a number
mt.__call = function(self, command)	
	return call(command), tonumber(call 'echo $?')
end

--- Requests system environment variable's value
-- @param self lsh module
-- @param index variable's name
-- @return variable's value
mt.__index = function(self, index)
	return call('echo -n $' .. index)
end

return lsh
