local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
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

return require("packer").startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter"
    }

    use "kyazdani42/nvim-tree.lua"
    use 'nvim-lua/plenary.nvim'
    use 'f-person/git-blame.nvim'
    -- use "kevinhwang91/nvim-bqf"
    use 'stevearc/qf_helper.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

    use 'sainnhe/sonokai'
    use 'eddyekofo94/gruvbox-flat.nvim'
    use 'tjdevries/colorbuddy.vim'
    use 'tjdevries/gruvbuddy.nvim'
    use { 'rktjmp/lush.nvim'}
    use { 'metalelf0/jellybeans-nvim' }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-vsnip",
            "ray-x/cmp-treesitter",
            "lukas-reineke/cmp-rg",
            "dmitmel/cmp-cmdline-history"
        }
    }

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
    use "nvim-telescope/telescope.nvim"
    use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'RRethy/nvim-treesitter-textsubjects'

    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"
    use "ahmedkhalf/lsp-rooter.nvim"
    use 'stevearc/aerial.nvim'

    use {'nvim-telescope/telescope-ui-select.nvim' }

    use {
      "klen/nvim-test",
    }

    use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

    use "rafamadriz/friendly-snippets"
    use "lukas-reineke/indent-blankline.nvim"

    use 'rmagatti/auto-session'
    use {
        'rmagatti/session-lens',
        requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    }

    use 'windwp/nvim-spectre'
    use 'kazhala/close-buffers.nvim'
    use "tversteeg/registers.nvim"
    use 'chentau/marks.nvim'

    use {
        "neovim/nvim-lspconfig",
        'williamboman/nvim-lsp-installer',
    }
    use "nvim-lua/lsp_extensions.nvim"
    use "ray-x/lsp_signature.nvim"
    use {
      'weilbith/nvim-code-action-menu',
      cmd = 'CodeActionMenu',
    }

    use 'gaborvecsei/memento.nvim'

    use 'simrat39/rust-tools.nvim'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use {'nvim-telescope/telescope-dap.nvim'}
    use {'theHamsta/nvim-dap-virtual-text'}
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use {'Pocco81/DAPInstall.nvim'}

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
            require'hop'.setup {}
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
        require('pretty-fold').setup{}
        require('pretty-fold.preview').setup()
    end
    }

    use { 'bennypowers/nvim-regexplainer',
      requires = {
        'nvim-lua/plenary.nvim',
        'MunifTanjim/nui.nvim',
      } }

    -- unix specific here
    if vim.loop.os_uname().sysname ~= 'Windows_NT' then
        use {
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons",
        }
    else
    end

end
)
