# Maintainers' guide

You have found the path here. I hope with custom configuration.

## Cloning the code

Setup a local build for quick changes:

```sh
$ git clone https://github.com/zimeg/proximity.nvim
$ cd proximity.nvim
$ ln -s $PWD/lua $HOME/path/to/neovim/config/lua/proximity
```

Update the import if needed:

```diff
- local proximity = require("proximity")
+ local proximity = require("proximity.proximity")
```

## Testing the tests

Specs near the code can be tried some for confidence:

```sh
$ make test
```

The [`busted`][busted] testing tool helps `make`.

[busted]: https://github.com/lunarmodules/busted
