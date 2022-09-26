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
  use { 'jvgrootveld/telescope-zoxide' }
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      -- you'll need at least one of these
      { 'nvim-telescope/telescope.nvim' },
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
    end,
  }

  -- Installer
  -- use 'williamboman/nvim-lsp-installer'
  -- use { 'Pocco81/DAPInstall.nvim' }
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
  use { "jose-elias-alvarez/null-ls.nvim" }
  use "b0o/schemastore.nvim"

  -- TREESITTER

  -- LSP
  use {
    "neovim/nvim-lspconfig",
  }
  use "ray-x/lsp_signature.nvim"
  use 'simrat39/rust-tools.nvim'
  use 'onsails/lspkind.nvim'
  use { 'j-hui/fidget.nvim',
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
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  }
  use 'f-person/git-blame.nvim'

  use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end
  }

  -- use 'stevearc/qf_helper.nvim'
  use {'kevinhwang91/nvim-bqf'}
  use { 'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons' }

  -- COLORSCHEME
  use 'norcalli/nvim-colorizer.lua'
  use 'sainnhe/sonokai'
  use 'eddyekofo94/gruvbox-flat.nvim'
  use { 'rktjmp/lush.nvim' }
  use { 'metalelf0/jellybeans-nvim' }
  use { "phha/zenburn.nvim" }

  use {
    'm-demare/hlargs.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter' }
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
  use 'sindrets/diffview.nvim'
  use { "nvim-treesitter/nvim-treesitter", run = "<cmd>TSUpdate" }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'RRethy/nvim-treesitter-textsubjects'
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "ahmedkhalf/lsp-rooter.nvim"
  use 'stevearc/aerial.nvim'
  use {
    "klen/nvim-test",
  }
  use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
  use "rafamadriz/friendly-snippets"
  use "lukas-reineke/indent-blankline.nvim"
  use 'rmagatti/auto-session'
  use {
    'rmagatti/session-lens',
    requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
  }
  use 'windwp/nvim-spectre'
  use 'kazhala/close-buffers.nvim'
  use "tversteeg/registers.nvim"
  use 'chentoast/marks.nvim'
  use 'gaborvecsei/memento.nvim'
  use {
    'NTBBloodbath/rest.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'jghauser/fold-cycle.nvim',
    config = function()
      require('fold-cycle').setup()
    end
  }
  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      -- require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      require 'hop'.setup {}
    end
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use { 'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup()
    end
  }

  use { 'anuvyklack/fold-preview.nvim',
    requires = 'anuvyklack/keymap-amend.nvim',
    config = function()
      require('fold-preview').setup()
    end
  }

end
)
