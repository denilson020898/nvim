local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

require("packer").init({
  max_jobs = 16,
  git = {
    clone_timeout = 300, -- 5 mins
  },
  profile = {
    enable = true,
  },
})

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- LIBS
  use 'nvim-lua/plenary.nvim'

  -- CMP
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      -- "hrsh7th/vim-vsnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-calc",
      "ray-x/cmp-treesitter",
      "lukas-reineke/cmp-rg",
      "dmitmel/cmp-cmdline-history",
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rcarriga/cmp-dap',
    }
  }


  -- TELESCOPE
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-telescope/telescope-live-grep-args.nvim" }
    }
  }
  use { 'nvim-telescope/telescope-ui-select.nvim' }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- Installer
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }

  -- LSP
  use {
    "neovim/nvim-lspconfig",
  }
  use "ray-x/lsp_signature.nvim"
  use 'simrat39/rust-tools.nvim'
  use { 'j-hui/fidget.nvim', tag = 'legacy',
    config = function()
      require "fidget".setup {}
    end
  }
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua' -- recommended if need floating window support

  -- DAP
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python'
  use { 'nvim-telescope/telescope-dap.nvim' }
  use { 'theHamsta/nvim-dap-virtual-text' }
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

  use {
    'Weissle/persistent-breakpoints.nvim',
    requires = 'mfussenegger/nvim-dap',
    config = function()
      require('persistent-breakpoints').setup({})
    end
  }

  -- CORE EXTENSION
  -- use "kyazdani42/nvim-tree.lua"
  use 'f-person/git-blame.nvim'

  use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end
  }

  -- COLORSCHEME
  use 'sainnhe/gruvbox-material'
  use { "catppuccin/nvim", as = "catppuccin" }

  use {
    'm-demare/hlargs.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('hlargs').setup()
    end,
  }

  use {
    'Saecki/crates.nvim',
    event = { "BufRead Cargo.toml" },
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require('crates').setup()
    end,
  }
  use {
    "NeogitOrg/neogit",
    config = function()
      require("neogit").setup({
        integrations = {
          diffview = true
        },
      })
    end,
  }
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { "nvim-treesitter/nvim-treesitter", run = "<cmd>TSUpdate" }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'RRethy/nvim-treesitter-textsubjects'
  use 'nvim-treesitter/nvim-treesitter-context'

  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use 'nvim-tree/nvim-web-devicons'

  use "rafamadriz/friendly-snippets"

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_end_of_line = true,
      }
    end
  }

  use 'rmagatti/auto-session'
  use { 'rmagatti/session-lens',
    requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
    config = function()
      require('session-lens').setup {
        path_display = { 'absolute' },
      }
    end
  }
  use 'nvim-pack/nvim-spectre'
  use {
    'chentoast/marks.nvim',
    config = function()
      require('marks').setup({})
    end
  }
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      require 'hop'.setup {}
    end
  }

  use { 'numToStr/Comment.nvim' }

  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim"
    }
  }
  use "rouge8/neotest-rust"

  use { 'stevearc/dressing.nvim', config = function()
    require('dressing').setup()
  end }
end
)
