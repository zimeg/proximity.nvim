.PHONY: test
test:
	nvim --headless --noplugin -es -u test/proximity_spec.lua
