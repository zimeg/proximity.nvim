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

## Releasing a change

Tagging versions mark stable places of use:

1. Add the new version header to the `CHANGELOG.md` to mark the release.
2. Preemptively update the version links at the end of the `CHANGELOG.md`.
3. Commit these changes to a branch called by the version name – e.g. `v1.2.3`
4. Open then merge a pull request with these changes
5. Draft a [new release][releases] using the version name and entries from the
   `CHANGELOG.md`
6. Publish this as the latest release!
7. Close the current milestone for the latest release then create a new one

In deciding a version number, best judgement should be used to follow
[semantic versioning][semver].

[releases]: https://github.com/zimeg/proximity.nvim/releases
[semver]: https://semver.org/spec/v2.0.0.html
