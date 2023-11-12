local keymaps = {
  n = {
    [";"] = ":",                                                                                 -- enter on command mode

    ["<space>e"] = "<Cmd>NvimTreeFocus<CR>",                                                     -- focus `nvim-tree` tree
    ["<space>n"] = "<Cmd>NvimTreeToggle<CR>",                                                    -- toggle `nvim-tree` tree

    ["<space>s"] = "<Cmd>update<CR>",                                                            -- save current buffer
    ["<space>cc"] = "<Cmd>bd<CR>",                                                               -- close current buffer
    ["<space>,"] = "<C-w>l<CR>",                                                                 -- focus the buffer at right
    ["<Tab>"] = "<Cmd>BufferLineCycleNext<CR>",                                                  -- move to the next buffer
    ["<S-Tab>"] = "<Cmd>BufferLineCyclePrev<CR>",                                                -- move to the previous buffer
    ["<space>1"] = "<Cmd>BufferLineGoToBuffer 1<CR>",                                            -- move to the buffer on 1th position
    ["<space>2"] = "<Cmd>BufferLineGoToBuffer 2<CR>",                                            -- move to the buffer on 2th position
    ["<space>3"] = "<Cmd>BufferLineGoToBuffer 3<CR>",                                            -- move to the buffer on 3th position
    ["<space>4"] = "<Cmd>BufferLineGoToBuffer 4<CR>",                                            -- move to the buffer on 4th position
    ["<space>5"] = "<Cmd>BufferLineGoToBuffer 5<CR>",                                            -- move to the buffer on 5th position
    ["<space>cl"] = "<Cmd>BufferLineCloseLeft<CR>",                                              -- close current buffer at left
    ["<space>cr"] = "<Cmd>BufferLineCloseRight<CR>",                                             -- close current buffers at right
    ["<space>co"] = "<Cmd>BufferLineCloseOthers<CR>",                                            -- close others buffers

    ["<space>ff"] = "<Cmd>Telescope find_files<CR>",                                             -- open the `Telescope` find files window
    ["<space>fg"] = "<Cmd>Telescope live_grep<CR>",                                              -- open the `Telescope` live grep window

    ["<space>qo"] = "<Cmd>copen<CR>",                                                            -- open the `Telescope` live grep window
    ["<space>qc"] = "<Cmd>cclose<CR>",                                                           -- open the `Telescope` live grep window
    ["<space>qn"] = "<Cmd>cnext<CR>",                                                            -- open the `Telescope` live grep window
    ["<space>qb"] = "<Cmd>cbefore<CR>",                                                          -- open the `Telescope` live grep window

    ["<space>tw"] = "<Cmd>TroubleToggle workspace_diagnostics<CR>",                              -- toggle the `trouble` panel for current workspace
    ["<space>td"] = "<Cmd>TroubleToggle document_diagnostics<CR>",                               -- toggle the `trouble` panel for current document
    ["<space>tn"] = "<Cmd>lua require('trouble').next({ skip_groups = true, jump = true})<CR>",  -- move to the next result in `Trouble`
    ["<space>tb"] = "<Cmd>lua require('trouble').previous({ skip_groups=true, jump = true })<CR>", -- move to the previous result in `Trouble`

    ["<space>r"] = "<Cmd>lua require('renamer').rename()<CR>",                                   -- open the `renamer` float input

    ["<S-Up>"] = "<Cmd>:m .-2<CR>",                                                              -- move current line up
    ["<S-Down>"] = "<Cmd>:m .+1<CR>",                                                            -- move current line down

    ["K"] = "<Cmd>lua vim.lsp.buf.hover()<CR>",                                                  -- open the lsp hover information
    ["gd"] = "<Cmd>lua vim.lsp.buf.definition()<CR>",                                            -- go to current position definition

    ["<space>do"] = "<Cmd>DiffviewOpen<CR>",                                                     -- open the git diff view
    ["<space>dc"] = "<Cmd>DiffviewClose<CR>",                                                    -- close the git diff view
    ["<space>df"] = "<Cmd>DiffviewToggleFiles<CR>",                                              -- toggle the git diff view files panel

    ["<space>d"] = "<Cmd>lua vim.diagnostic.open_float()<CR>",                                   -- open the current line lsp diagnostic
    ["<space>dn"] = "<Cmd>lua vim.diagnostic.goto_next()<CR>",                                   -- move to the current line next lsp diagnostic
    ["<space>dp"] = "<Cmd>lua vim.diagnostic.goto_prev()<CR>",                                   -- move to the current line previous lsp diagnostic

    ["<space>sr"] = function()                                                                   -- insert the search and replace command
      vim.api.nvim_feedkeys(":%s///gc", "n", true)
    end,
  },
}

for mode, maps in pairs(keymaps) do
  for map, command in pairs(maps) do
    vim.keymap.set(mode, map, command)
  end
end
