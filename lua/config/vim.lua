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
vim.diagnostic.config({ signs = false })

-- behavior
vim.opt.confirm = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.o.foldcolumn = "1"
vim.o.foldlevel = 150
vim.o.foldlevelstart = 100
vim.o.foldenable = true
