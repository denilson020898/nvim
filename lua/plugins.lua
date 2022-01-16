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

    -- use {'stevearc/gkeep.nvim', run = ':UpdateRemotePlugins'}

    -- ui
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
    use "kevinhwang91/nvim-bqf"
    use 'norcalli/nvim-colorizer.lua'
    use "akinsho/nvim-toggleterm.lua"
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

    -- color
    use 'sainnhe/sonokai'
    use 'eddyekofo94/gruvbox-flat.nvim'

    -- helpers
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
        'Saecki/crates.nvim',
        event = { "BufRead Cargo.toml" },
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = function()
            require('crates').setup()
        end,
    }

    -- use 'b3nj5m1n/kommentary'
    use "TimUntersberger/neogit"
    use 'sindrets/diffview.nvim'
    use "nvim-telescope/telescope.nvim"
    use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
    use "windwp/nvim-autopairs"
    use "ahmedkhalf/lsp-rooter.nvim"
    use "windwp/nvim-ts-autotag"
    use 'stevearc/aerial.nvim'

    use "haringsrob/nvim_context_vt"
    -- use 'romgrk/nvim-treesitter-context'

    use 'abecodes/tabout.nvim'
    use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
    -- Or lazy load with `module` option. See further down for info on how to lazy load when using FocusSplit commands
    -- Or lazy load this plugin by creating an arbitrary command using the cmd option in packer.nvim
    -- use { 'beauwilliams/focus.nvim', cmd = { "FocusSplitNicely", "FocusSplitCycle" }, module = "focus",
    --     config = function()
    --         require("focus").setup({hybridnumber = true})
    --     end
    -- }

    use "rafamadriz/friendly-snippets"
    use "lukas-reineke/indent-blankline.nvim"

    use 'rmagatti/auto-session'
    use {
        'rmagatti/session-lens',
        requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    }
    use {
        "nvim-telescope/telescope-media-files.nvim",
        requires = {
            {'nvim-telescope/telescope.nvim'},
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'},
        }
    }

    use 'windwp/nvim-spectre'
    use 'gennaro-tedesco/nvim-jqx'
    use 'kazhala/close-buffers.nvim'
    use "tversteeg/registers.nvim"
    use 'chentau/marks.nvim'
    -- lsp

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
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }

    use 'simrat39/rust-tools.nvim'
    use 'mfussenegger/nvim-dap'

    use {
        'NTBBloodbath/rest.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
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

    use({
      'sQVe/sort.nvim',

      -- Optional setup for overriding defaults.
      config = function()
        require("sort").setup({
          -- Input configuration here.
          -- Refer to the configuration section below for options.
        })
      end
    })

    use{ 'anuvyklack/pretty-fold.nvim',
    config = function()
        require('pretty-fold').setup{}
        require('pretty-fold.preview').setup()
    end
}

end
)
