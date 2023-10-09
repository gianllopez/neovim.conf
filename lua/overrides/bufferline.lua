local bufferline = require("bufferline")

return {
  options = {
    style_preset = bufferline.style_preset.minimal,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true,
      },
    },
  },
}
