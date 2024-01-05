local keymap = vim.keymap

local utils = require("utils")

local renamer = require("renamer")
local trouble = require("trouble")

local options = { noremap = true, silent = true }

-- shortcuts
keymap.set("n", ";", ":", utils.merge(options, { nowait = true }))
keymap.set("n", "<S-Up>", "<Cmd>:m .-2<CR>", options)
keymap.set("n", "<S-Down>", "<Cmd>:m .+1<CR>", options)
keymap.set("n", "<space>sr", function()
	vim.api.nvim_feedkeys(":%s///gc", "n", true)
end, options)

-- buffers
keymap.set("n", "<space>s", "<Cmd>update<CR>", options)
keymap.set("n", "<space>cc", "<Cmd>bd<CR>", options)
keymap.set("n", "<space>,", "<C-w>l<CR>", options)
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", options)
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", options)
keymap.set("n", "<space>cl", "<Cmd>BufferLineCloseLeft<CR>", options)
keymap.set("n", "<space>cr", "<Cmd>BufferLineCloseRight<CR>", options)
keymap.set("n", "<space>co", "<Cmd>BufferLineCloseOthers<CR>", options)
keymap.set("n", "<space>wa", "<Cmd>wa<CR>", options)
keymap.set("n", "<space>qa", "<Cmd>qa<CR>", options)

-- telescope
keymap.set("n", "<space>fb", "<Cmd>Telescope file_browser<CR>", options)
keymap.set("n", "<space>ff", "<Cmd>Telescope find_files<CR>", options)
keymap.set("n", "<space>fg", "<Cmd>Telescope live_grep<CR>", options)

-- quickfix
keymap.set("n", "<space>qo", "<Cmd>copen<CR>", options)
keymap.set("n", "<space>qn", "<Cmd>cnext<CR>", options)
keymap.set("n", "<space>qb", "<Cmd>cbefore<CR>", options)
keymap.set("n", "<space>qc", "<Cmd>cclose<CR>", options)

-- trouble
keymap.set("n", "<space>tw", "<Cmd>TroubleToggle workspace_diagnostics<CR>", options)
keymap.set("n", "<space>td", "<Cmd>TroubleToggle document_diagnostics<CR>", options)
keymap.set("n", "<space>tn", function()
	trouble.next({ skip_groups = true, jump = true })
end, options)
keymap.set("n", "<space>tb", function()
	trouble.previous({ skip_groups = true, jump = true })
end, options)

-- renamer
keymap.set("n", "<space>r", function()
	renamer.rename()
end, options)

-- nvim-lspconfig
keymap.set("n", "K", function()
	vim.lsp.buf.hover()
end, options)
keymap.set("n", "gd", function()
	vim.lsp.buf.definition()
end, options)
keymap.set("n", "ca", function()
	vim.lsp.buf.code_action()
end, options)

-- diffview
keymap.set("n", "<space>do", "<Cmd>DiffviewOpen<CR>", options)
keymap.set("n", "<space>dc", "<Cmd>DiffviewClose<CR>", options)
keymap.set("n", "<space>df", "<Cmd>DiffviewToggleFiles<CR>", options)
keymap.set("n", "<space>dh", "<Cmd>DiffviewFileHistory %<CR>", options)
