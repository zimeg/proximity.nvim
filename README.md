# proximity.nvim

Jump to the nearest upward matching file in one fast motion. Helpful when
navigating to known places from the depts of a project. Better when followed
with `<CTRL-O>` for fast returns.

Install this plugin using a plugin manager of choice then `setup` the plugin:

```lua
local proximity = require("proximity")

proximity.setup({
	targets = {
		["<leader>pc"] = { "CHANGELOG.md" },
		["<leader>pr"] = { "README.md" },
	},
})
```

The above `setup` options show placeholder values and can be forgone if no other
`targets` are used.

## Customizations

Different configurations can find certain files in some other common situations.

### Adjacent files

Search for files in related directories on the quest upwards:

```lua
proximity.setup({
	targets = {
		["<leader>pm"] = { ".github/MAINTAINERS_GUIDE.md" },
	},
})
```

### Multiple matches

Attempt to find different files using the same motion:

```lua
proximity.setup({
	targets = {
		["<leader>pp"] = { "package.json", "pyproject.toml" },
	},
})
```
