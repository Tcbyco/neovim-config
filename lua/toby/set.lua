-- line numbers, and make them relative
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space tab indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- don't have vim do backups, instead give undotree access to long running undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME")
vim.opt.undofile = true

-- don't keep hits highlighted after search
vim.opt.hlsearch = false
-- highlight search hits while you are writing the search
vim.opt.incsearch = true

-- I think windows terminal won't support this...https://github.com/cslarsen/jp2a/issues/17
-- vim.opt.termguicolors = true

-- mininmum lines at top and bottom set to 8, for easy jumping around on the page
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- fast update time
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
