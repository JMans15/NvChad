local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "clangd",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      -- require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function (_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },
  {"kevinhwang91/promise-async"},
  {
    "kevinhwang91/nvim-ufo",
    -- lazy = false,
    ft = {"C", "rust"},
    dependencies = "kevinhwang91/promise-async",
    config = function (_, _)
      require "custom.configs.ufo"
      require('ufo').setup()
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    config = function (_,_)
      require "custom.configs.markdown-preview"
      vim.fn["mkdp#util#install"]()
    end
  },
  {
    "DavidAnson/markdownlint",
    ft = "markdown",
  },
  {
    "artempyanykh/marksman",
    ft = "markdown",
  },
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function ()
      require "custom.configs.dashboard"
    end,
    dependencies = {{'nvim-tree/nvim-web-devicons'}}
  },
}
return plugins
