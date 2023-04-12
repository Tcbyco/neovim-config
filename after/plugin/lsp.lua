local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = true,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

-- make sure these servers are installed
-- see :help lsp-zero.ensure_installed()
lsp.ensure_installed({
  'tsserver',
  'eslint',
})

lsp.setup()

-- ** USAGE **
-- To install a language server for a filetype, have a file of that type open, then ':LspInstall'
