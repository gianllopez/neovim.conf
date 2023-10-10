local cmp = require("cmp")
local autopairs = require("nvim-autopairs.completion.cmp")

return {
  config = function(opts)
    cmp.setup(opts)
    cmp.event:on("confirm_done", autopairs.on_confirm_done())
  end,
}
