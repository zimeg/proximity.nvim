.PHONY: test
test:
	nvim --headless --noplugin -es -u lua/proximity_spec.lua

idk:
	nvim -c "lua vim.api.nvim_feedkeys(' pr', 'x', false)"
	# nvim -c "lua vim.api.nvim_feedkeys('z', 'x', false)"
	# nvim -c "lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(\" pr\", true, false, true), \"n\", false)"
