local busted = require("busted.runner")

busted()

describe("proximity", function()
	local _ = match._

	before_each(function()
		vim.api.nvim_command("mapclear")
	end)

	it("has default targets if no options are provided", function()
		vim.keymap.set = spy.new(function() end)

		local plugin = require("proximity")
		plugin.setup()

		assert.spy(vim.keymap.set).was_called_with("n", "<leader>pc", _, _)
		assert.spy(vim.keymap.set).was_called_with("n", "<leader>pr", _, _)
	end)

	it("overrides targets with provided configurations", function()
		vim.keymap.set = spy.new()

		local plugin = require("proximity")
		plugin.setup({
			targets = {
				["<leader>pm"] = { "MAINTAINERS_GUIDE.md" },
			},
		})

		assert.spy(vim.keymap.set).was_not_called_with("n", "<leader>pc", _, _)
		assert.spy(vim.keymap.set).was_not_called_with("n", "<leader>pr", _, _)
		assert.spy(vim.keymap.set).was_called_with("n", "<leader>pm", _, _)
	end)
end)
