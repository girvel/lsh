--- Tiny library encapsulating shell calls
-- Works like this:
-- lsh 'cat .temp'
-- lsh 'sudo aptitude update | sudo tee -a $APTITUDE_LOGS/update.txt'

local lsh = {}
local mt = {}
setmetatable(lsh, mt)


--- Executes shell command and returns output
mt.__call = function(self, command)
	local call = function(source)
		local stream = io.popen(source)
		local result = stream:read "*a"
		stream:close()
		return result
	end
	
	return call(command), tonumber(call 'echo $?')
end

return lsh
