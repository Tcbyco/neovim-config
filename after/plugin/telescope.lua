local builtin = require('telescope.builtin')

--Project Find. standard fuzzy finding inside a folder
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

--Git Search, eg to avoid node modules and other gitignored folders in a project
vim.keymap.set('n', '<C-p', builtin.git_files, {})

--Project Search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
	
