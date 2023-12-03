local keymap = vim.keymap

local renamer = require("renamer")
local trouble = require("trouble")

local options = { noremap = true, silent = true }

-- shortcuts
keymap.set("n", ";", ":", options)
keymap.set("n", "<S-Up>", "<Cmd>:m .-2<CR>", options)
keymap.set("n", "<S-Down>", "<Cmd>:m .+1<CR>", options)
keymap.set("n", "<leader>sr", function()
	vim.api.nvim_feedkeys(":%s///gc", "n", true)
end, options)

-- buffers
keymap.set("n", "<leader>s", "<Cmd>update<CR>", options)
keymap.set("n", "<leader>cc", "<Cmd>bd<CR>", options)
keymap.set("n", "<leader>,", "<C-w>l<CR>", options)
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", options)
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", options)
keymap.set("n", "<leader>cl", "<Cmd>BufferLineCloseLeft<CR>", options)
keymap.set("n", "<leader>cr", "<Cmd>BufferLineCloseRight<CR>", options)
keymap.set("n", "<leader>co", "<Cmd>BufferLineCloseOthers<CR>", options)

-- telescope
keymap.set("n", "<leader>fb", "<Cmd>Telescope file_browser<CR>", options)
keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", options)
keymap.set("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>", options)

-- quickfix
keymap.set("n", "<leader>qo", "<Cmd>copen<CR>", options)
keymap.set("n", "<leader>qn", "<Cmd>cnext<CR>", options)
keymap.set("n", "<leader>qb", "<Cmd>cbefore<CR>", options)
keymap.set("n", "<leader>qc", "<Cmd>cclose<CR>", options)

-- trouble
keymap.set("n", "<leader>tw", "<Cmd>TroubleToggle workleader_diagnostics<CR>", options)
keymap.set("n", "<leader>td", "<Cmd>TroubleToggle document_diagnostics<CR>", options)
keymap.set("n", "<leader>tn", function()
	trouble.next({ skip_groups = true, jump = true })
end, options)
keymap.set("n", "<leader>tb", function()
	trouble.previous({ skip_groups = true, jump = true })
end, options)

-- renamer
keymap.set("n", "<leader>r", function()
	renamer.rename()
end, options)

-- lsp
keymap.set("n", "K", function()
	vim.lsp.buf.hover()
end, options)
keymap.set("n", "gd", function()
	vim.lsp.buf.definition()
end, options)

-- diffview
keymap.set("n", "<leader>do", "<Cmd>DiffviewOpen<CR>", options)
keymap.set("n", "<leader>dc", "<Cmd>DiffviewClose<CR>", options)
keymap.set("n", "<leader>df", "<Cmd>DiffviewToggleFiles<CR>", options)
keymap.set("n", "<leader>dh", "<Cmd>DiffviewFileHistory %<CR>", options)
