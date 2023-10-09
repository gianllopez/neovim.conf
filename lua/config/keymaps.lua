local keymaps = {
  n = {
    [";"] = ":",                                                                               -- enter on command mode
    ["<leader>s"] = "<Cmd>update<CR>",                                                         -- save current buffer

    ["<leader>e"] = "<Cmd>NvimTreeFocus<CR>",                                                  -- focus `NvimTree`
    ["<leader>n"] = "<Cmd>NvimTreeToggle<CR>",                                                 -- toggle `NvimTree`

    ["<Tab>"] = "<Cmd>BufferLineCycleNext<CR>",                                                -- move to the next buffer
    ["<S-Tab>"] = "<Cmd>BufferLineCyclePrev<CR>",                                              -- move to the previous buffer
    ["<leader>1"] = "<Cmd>BufferLineGoToBuffer 1<CR>",                                         -- move to the buffer on 1th position
    ["<leader>2"] = "<Cmd>BufferLineGoToBuffer 2<CR>",                                         -- move to the buffer on 2th position
    ["<leader>3"] = "<Cmd>BufferLineGoToBuffer 3<CR>",                                         -- move to the buffer on 3th position
    ["<leader>4"] = "<Cmd>BufferLineGoToBuffer 4<CR>",                                         -- move to the buffer on 4th position
    ["<leader>5"] = "<Cmd>BufferLineGoToBuffer 5<CR>",                                         -- move to the buffer on 5th position
    ["<leader>cc"] = "<Cmd>bd<CR>",                                                            -- close current buffer at left
    ["<leader>cl"] = "<Cmd>BufferLineCloseLeft<CR>",                                           -- close current buffer at left
    ["<leader>cr"] = "<Cmd>BufferLineCloseRight<CR>",                                          -- close current buffers at right
    ["<leader>co"] = "<Cmd>BufferLineCloseOthers<CR>",                                         -- close current buffers at right

    ["<leader>ff"] = "<Cmd>Telescope find_files<CR>",                                          -- open the `Telescope` find files window
    ["<leader>fg"] = "<Cmd>Telescope live_grep<CR>",                                           -- open the `Telescope` live grep window

    ["<leader>qo"] = "<Cmd>copen<CR>",                                                         -- open the `Telescope` live grep window
    ["<leader>qc"] = "<Cmd>cclose<CR>",                                                        -- open the `Telescope` live grep window
    ["<leader>qn"] = "<Cmd>cnext<CR>",                                                         -- open the `Telescope` live grep window
    ["<leader>qb"] = "<Cmd>cbefore<CR>",                                                       -- open the `Telescope` live grep window

    ["<leader>tw"] = "<Cmd>TroubleToggle workspace_diagnostics<CR>",                           -- toggle the `trouble` panel for current workspace
    ["<leader>td"] = "<Cmd>TroubleToggle document_diagnostics<CR>",                            -- toggle the `trouble` panel for current document
    ["<leader>tn"] = "<Cmd>lua require('trouble').next({ jump = true })<CR>",                  -- move to the next result in `Trouble`
    ["<leader>tb"] = "<Cmd>lua require('trouble').previous({ jump = true })<CR>",              -- move to the previous result in `Trouble`

    ["<leader>S"] = "<Cmd>lua require('spectre').toggle()<CR>",                                -- toogle `nvim-spectre` panel
    ["<leader>Sc"] = "<Cmd>lua require('spectre').open_file_search({ select_word = true })<CR>", -- toogle `nvim-spectre` panel in current file,

    ["<leader>r"] = "<Cmd>lua renamer.rename()<CR>",                                           -- open the `renamer` float input

    ["<S-Up>"] = "<Cmd>:m .-2<CR>",                                                            -- move current line up
    ["<S-Down>"] = "<Cmd>:m .+1<CR>",                                                          -- move current line down
  },
}

for mode, maps in pairs(keymaps) do
  for map, command in pairs(maps) do
    vim.keymap.set(mode, map, command)
  end
end
