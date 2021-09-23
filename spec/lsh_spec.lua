describe("lsh library", function()
	lsh = require 'lsh'
	
	describe("__call", function()
		it("makes a shell call and returns output & exit code", function()
			assert.are_same({'123\n', 0}, {lsh 'echo 123'})
		end)

		it('can escape newline at the end of the output', function()
			assert.are.same({'123', 0}, {lsh('echo 123', true)})
		end)
	end)

	describe("__index", function()
		it("gets environment variable's value", function()

		end)
	end)
end)
