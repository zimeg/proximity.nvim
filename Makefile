.PHONY: test
test:
	nvim --headless --noplugin -es -u lua/proximity_spec.lua
