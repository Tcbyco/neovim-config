require("toby.remap")
require("toby.set")
require("toby.banner")
-- Aesthetic
-- todo: move this to colors.lua with the rest of the configs
local catppuccin = require("catppuccin")
catppuccin.setup {
	flavour = "mocha", -- latte, frappe, macchiato, mocha
}
vim.cmd[[colorscheme catppuccin]]
