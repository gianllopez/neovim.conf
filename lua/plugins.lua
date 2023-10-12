return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require("config.null-ls")
        end,
      },
      {
        "hrsh7th/cmp-nvim-lsp",
        dependencies = {
          {
            "L3MON4D3/LuaSnip",
            dependencies = { "rafamadriz/friendly-snippets" },
            config = function()
              require("luasnip.loaders.from_vscode").lazy_load()
            end,
          },
          {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            opts = {},
          },
          {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/nvim-cmp",
            "saadparwaiz1/cmp_luasnip",
          },
        },
        opts = function()
          return require("overrides.nvim-cmp")
        end,
        config = function(_, opts)
          require("config.nvim-cmp").config(opts)
        end,
      },
    },
    config = function()
      require("config.lspconfig")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      return require("overrides.telescope")
    end,
    config = function(_, opts)
      require("telescope").setup(opts)
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "folke/flash.nvim",
    keys = {
      {
        "s",
        mode = { "n", "o", "x" },
        function()
          require("flash").jump()
        end,
      },
    },
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "sindrets/diffview.nvim",
  },
  {
    "filipdutescu/renamer.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      return require("overrides.nvim-tree")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      {
        "windwp/nvim-ts-autotag",
      },
      {
        "kevinhwang91/nvim-ufo",
        dependencies = { "kevinhwang91/promise-async" },
        opts = {},
      },
    },
    opts = function()
      return require("overrides.nvim-treesitter")
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      return require("overrides.bufferline")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 100,
  },
}
