local globals = vim.g
local options = vim.opt

-- text edition
globals.mapleader = " "
options.autoindent = true
options.expandtab = true
options.tabstop = 2
options.shiftwidth = 2
options.clipboard = "unnamedplus"
options.wrap = false
options.number = true

-- diagnostics
vim.diagnostic.config({ signs = false, virtual_text = false })

--- behavior
options.confirm = true
options.swapfile = false
options.foldcolumn = "0"
options.foldlevel = 150
options.foldlevelstart = 100
options.foldenable = true

require("config.lazy")
require("config.keymaps")
