---Outlines for the contents of this program
---@class Proximity
---@field options ProximityOptions
---@field setup fun(opts?: ProximityOptions)

---Default and provided configurations
---@class ProximityOptions
---@field targets? table<string, table<string>>

---The program in the exported global state
---@type Proximity
---@diagnostic disable-next-line: missing-fields
local M = {
	options = {
		targets = {
			["<leader>pc"] = { "CHANGELOG.md" },
			["<leader>pr"] = { "README.md" },
		},
	},
}

---Navigate to the first found target with a combo
---@param combo string keystroke combination to use
---@param files table file names to compare against
local map = function(combo, files)
	vim.keymap.set("n", combo, function()
		local paths = vim.fs.find(files, {
			stop = vim.env.HOME,
			upward = true,
			path = vim.fn.expand("%"),
		})
		if #paths == 0 then
			vim.notify("No matching file was found: " .. table.concat(files, ", "), vim.log.levels.WARN)
		else
			vim.cmd.edit(paths[1])
		end
	end, { remap = false })
end

---Establish defaults or provided input mapping
---@param opts ProximityOptions? optional customized inputs
M.setup = function(opts)
	if opts and opts.targets then
		M.options.targets = opts.targets
	end
	for combo, files in pairs(M.options.targets) do
		map(combo, files)
	end
end

return M
