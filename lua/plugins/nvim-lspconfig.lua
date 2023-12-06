return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "hrsh7th/cmp-nvim-lsp",
      dependencies = {
        {
          "L3MON4D3/LuaSnip",
          version = "v2.1.0",
          config = function()
            require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
          end,
        },
        {
          "windwp/nvim-autopairs",
          event = "InsertEnter",
          opts = {},
        },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/nvim-cmp" },
        { "saadparwaiz1/cmp_luasnip" },
      },
      config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local autopairs = require("nvim-autopairs.completion.cmp")

        cmp.setup({
          snippet = {
            expand = function(args)
              luasnip.lsp_expand(args.body)
            end,
          },
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          },
          mapping = cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end, { "i", "s" }),
            ["<CR>"] = cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
            }),
          }),
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
            { name = "luasnip" },
          }),
        })

        cmp.event:on("confirm_done", autopairs.on_confirm_done())
      end,
    },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = {
      "lua_ls",
      "pyright",
      "tsserver",
      "tailwindcss",
      "dartls",
    }

    for _, server in ipairs(servers) do
      lspconfig[server].setup({ capabilities = capabilities })
    end
  end,
}
