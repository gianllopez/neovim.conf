return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    view = {
      cursorline = false,
    },
    renderer = {
      root_folder_label = false,
      indent_markers = {
        enable = true,
      },
    },
    git = {
      enable = false,
    },
  },
}
