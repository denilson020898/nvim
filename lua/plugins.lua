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
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-calc",
      -- "hrsh7th/cmp-vsnip",
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

  -- Installer
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
  -- use { "jose-elias-alvarez/null-ls.nvim" }

  -- Lua
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        manual_mode = true,
      }
    end
  }

  -- TREESITTER

  -- LSP
  use {
    "neovim/nvim-lspconfig",
  }
  use "ray-x/lsp_signature.nvim"
  use 'simrat39/rust-tools.nvim'
  use 'onsails/lspkind.nvim'
  use { 'j-hui/fidget.nvim', tag = 'legacy',
    config = function()
      require "fidget".setup {}
    end
  }

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
  use "kyazdani42/nvim-tree.lua"
  use 'f-person/git-blame.nvim'

  use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end
  }

  -- COLORSCHEME
  -- use { 'norcalli/nvim-colorizer.lua', config = function() require("colorizer").setup {} end }
  -- use 'luisiacc/gruvbox-baby'
  use 'sainnhe/gruvbox-material'
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use 'tjdevries/colorbuddy.vim'
  -- use 'tjdevries/gruvbuddy.nvim'
  -- use 'kvrohit/mellow.nvim'
  -- use 'tiagovla/tokyodark.nvim'
  -- use {
  --   "phha/zenburn.nvim",
  --   config = function() require("zenburn").setup() end
  -- } use 'sainnhe/sonokai'
  -- use ({ 'projekt0n/github-nvim-theme' })

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
  use "TimUntersberger/neogit"
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { "nvim-treesitter/nvim-treesitter", run = "<cmd>TSUpdate" }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'RRethy/nvim-treesitter-textsubjects'

  use 'nvim-treesitter/nvim-treesitter-context'

  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use {
    'stevearc/aerial.nvim',
    config = function()
      require('aerial').setup({
        filter_kind = {
          "Class",
          "Constructor",
          "Enum",
          "Function",
          "Interface",
          "Module",
          "Method",
          "Struct",
        },
      }
      )
    end
  }


  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

  use "rafamadriz/friendly-snippets"
  use "lukas-reineke/indent-blankline.nvim"
  use 'rmagatti/auto-session'
  use { 'rmagatti/session-lens',
    requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
  }
  -- use 'windwp/nvim-spectre'
  use 'nvim-pack/nvim-spectre'
  use "tversteeg/registers.nvim"
  use 'chentoast/marks.nvim'
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      require 'hop'.setup {}
    end
  }

  use { 'numToStr/Comment.nvim' }
  use 'kazhala/close-buffers.nvim'

  -- use { 'anuvyklack/pretty-fold.nvim',
  --   config = function()
  --     require('pretty-fold').setup()
  --   end
  -- }
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim"
    }
  }
  use "rouge8/neotest-rust"

  use { 'stevearc/dressing.nvim' }
end
)
