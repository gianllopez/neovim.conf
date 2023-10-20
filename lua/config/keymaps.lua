local keymaps = {
  n = {
    [";"] = ":",                                                                                  -- enter on command mode

    ["<leader>e"] = "<Cmd>NvimTreeFocus<CR>",                                                     -- focus `nvim-tree` tree
    ["<leader>n"] = "<Cmd>NvimTreeToggle<CR>",                                                    -- toggle `nvim-tree` tree

    ["<leader>s"] = "<Cmd>update<CR>",                                                            -- save current buffer
    ["<leader>cc"] = "<Cmd>bd<CR>",                                                               -- close current buffer
    ["<leader>,"] = "<C-w>l<CR>",                                                                 -- focus the buffer at right
    ["<Tab>"] = "<Cmd>BufferLineCycleNext<CR>",                                                   -- move to the next buffer
    ["<S-Tab>"] = "<Cmd>BufferLineCyclePrev<CR>",                                                 -- move to the previous buffer
    ["<leader>1"] = "<Cmd>BufferLineGoToBuffer 1<CR>",                                            -- move to the buffer on 1th position
    ["<leader>2"] = "<Cmd>BufferLineGoToBuffer 2<CR>",                                            -- move to the buffer on 2th position
    ["<leader>3"] = "<Cmd>BufferLineGoToBuffer 3<CR>",                                            -- move to the buffer on 3th position
    ["<leader>4"] = "<Cmd>BufferLineGoToBuffer 4<CR>",                                            -- move to the buffer on 4th position
    ["<leader>5"] = "<Cmd>BufferLineGoToBuffer 5<CR>",                                            -- move to the buffer on 5th position
    ["<leader>cl"] = "<Cmd>BufferLineCloseLeft<CR>",                                              -- close current buffer at left
    ["<leader>cr"] = "<Cmd>BufferLineCloseRight<CR>",                                             -- close current buffers at right
    ["<leader>co"] = "<Cmd>BufferLineCloseOthers<CR>",                                            -- close others buffers

    ["<leader>ff"] = "<Cmd>Telescope find_files<CR>",                                             -- open the `Telescope` find files window
    ["<leader>fg"] = "<Cmd>Telescope live_grep<CR>",                                              -- open the `Telescope` live grep window

    ["<leader>qo"] = "<Cmd>copen<CR>",                                                            -- open the `Telescope` live grep window
    ["<leader>qc"] = "<Cmd>cclose<CR>",                                                           -- open the `Telescope` live grep window
    ["<leader>qn"] = "<Cmd>cnext<CR>",                                                            -- open the `Telescope` live grep window
    ["<leader>qb"] = "<Cmd>cbefore<CR>",                                                          -- open the `Telescope` live grep window

    ["<leader>tw"] = "<Cmd>TroubleToggle workleader_diagnostics<CR>",                             -- toggle the `trouble` panel for current workleader
    ["<leader>td"] = "<Cmd>TroubleToggle document_diagnostics<CR>",                               -- toggle the `trouble` panel for current document
    ["<leader>tn"] = "<Cmd>lua require('trouble').next({ skip_groups = true, jump = true})<CR>",  -- move to the next result in `Trouble`
    ["<leader>tb"] = "<Cmd>lua require('trouble').previous({ skip_groups=true, jump = true })<CR>", -- move to the previous result in `Trouble`

    ["<leader>r"] = "<Cmd>lua require('renamer').rename()<CR>",                                   -- open the `renamer` float input

    ["<S-Up>"] = "<Cmd>:m .-2<CR>",                                                               -- move current line up
    ["<S-Down>"] = "<Cmd>:m .+1<CR>",                                                             -- move current line down

    ["K"] = "<Cmd>lua vim.lsp.buf.hover()<CR>",                                                   -- open the lsp hover information
    ["gd"] = "<Cmd>lua vim.lsp.buf.definition()<CR>",                                             -- go to current position definition

    ["<leader>do"] = "<Cmd>DiffviewOpen<CR>",                                                     -- open the git diff view
    ["<leader>dc"] = "<Cmd>DiffviewClose<CR>",                                                    -- close the git diff view
    ["<leader>df"] = "<Cmd>DiffviewToggleFiles<CR>",                                              -- toggle the git diff view files panel

    ["<leader>d"] = "<Cmd>lua vim.diagnostic.open_float()<CR>",                                   -- open the current line lsp diagnostic
    ["<leader>dn"] = "<Cmd>lua vim.diagnostic.goto_next()<CR>",                                   -- move to the current line next lsp diagnostic
    ["<leader>dp"] = "<Cmd>lua vim.diagnostic.goto_prev()<CR>",                                   -- move to the current line previous lsp diagnostic
  },
}

for mode, maps in pairs(keymaps) do
  for map, command in pairs(maps) do
    vim.keymap.set(mode, map, command)
  end
end
