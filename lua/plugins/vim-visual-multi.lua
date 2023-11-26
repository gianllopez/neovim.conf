return {
  "mg979/vim-visual-multi",
  branch = "master",
  config = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ["Select Cursor Up"] = "<C-M-Up>",
      ["Select Cursor Down"] = "<C-M-Down>",
    }
  end,
}
