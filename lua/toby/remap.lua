vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted blocks together, and auto indent if they go into a block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- make J (move line up) keep cursor where it was
vim.keymap.set("n", "J", "mzJ`z")

-- cursor stays in the middle of the screen when you page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search hits stay in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pasted over term won't get added to the paste buffer/register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank into system clipboard instead of vim register
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- enable when i get tmux running. easy switch between projects w/ tmux sessions
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- replace all for the current word you're on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--remap copilot to ctrl+spacesimap
vim.keymap.set('i', '<C-Space>', 'copilot#Accept("CR")', {expr=true, silent=true})
