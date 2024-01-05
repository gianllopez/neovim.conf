local globals = vim.g
local options = vim.opt

-- text edition / indent
options.tabstop = 2
options.softtabstop = 2
options.shiftwidth = 2
options.expandtab = true
options.autoindent = true
options.smartindent = true
options.listchars = { space = "·", tab = "→ " }
options.list = true
-- text edition / clipboard
options.clipboard = "unnamedplus"
-- text edition / ui
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
