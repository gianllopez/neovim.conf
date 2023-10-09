-- text edition
vim.g.mapleader = " "
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"

-- user interface
vim.opt.number = true
vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- diagnostics
vim.diagnostic.config({ signs = false, float = true })

-- behavior
vim.opt.confirm = true
vim.opt.wrap = false
