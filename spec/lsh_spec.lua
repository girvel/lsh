describe("lsh library", function()
	lsh = require 'lsh'
	
	describe("__call", function()
		it("makes a shell call and returns output & exit code", function()
			assert.are_same({'123\n', 0}, {lsh 'echo 123'})
		end)
	end)
end)
