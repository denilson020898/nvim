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

    -- ui
    use 'kosayoda/nvim-lightbulb'
    use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use "kyazdani42/nvim-tree.lua"
    use "nvim-lua/popup.nvim"
    use 'nvim-lua/plenary.nvim'
    use 'f-person/git-blame.nvim'
    use "kevinhwang91/nvim-bqf"
    use 'norcalli/nvim-colorizer.lua'
    use 'romgrk/barbar.nvim'
    use "akinsho/nvim-toggleterm.lua"

    -- color
    use 'sainnhe/sonokai'
    use 'eddyekofo94/gruvbox-flat.nvim'

    -- helpers
    use "hrsh7th/nvim-compe"
    use 'b3nj5m1n/kommentary'
    use "TimUntersberger/neogit"
    use 'sindrets/diffview.nvim'
    use "nvim-telescope/telescope.nvim"
    use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
    use "windwp/nvim-autopairs"
    use "airblade/vim-rooter"
    use "windwp/nvim-ts-autotag"
    use 'simrat39/symbols-outline.nvim'
    use "haringsrob/nvim_context_vt"
    -- use {
    --     'abecodes/tabout.nvim',
    --     config = function()
    --         require('tabout').setup {
    --             tabkey = '<Tab>', -- key to trigger tabout
    --             act_as_tab = true, -- shift content if tab out is not possible
    --             completion = true, -- if the tabkey is used in a completion pum
    --             tabouts = {
    --                 {open = "'", close = "'"},
    --                 {open = '"', close = '"'},
    --                 {open = '`', close = '`'},
    --                 {open = '(', close = ')'},
    --                 {open = '[', close = ']'},
    --                 {open = '{', close = '}'}
    --             },
    --             ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
    --             exclude = {} -- tabout will ignore these filetypes
    --         }
    --     end,
    --     wants = {'nvim-treesitter'}, -- or require if not used so far
    --     after = {'completion-nvim'} -- if a completion plugin is using tabs load it before
    -- }

    use "rafamadriz/friendly-snippets"
    use "hrsh7th/vim-vsnip"
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

    -- lsp
    use "neovim/nvim-lspconfig"
    use 'kabouzeid/nvim-lspinstall'
    use "nvim-lua/lsp_extensions.nvim"
    use 'folke/lsp-colors.nvim'
    use "ray-x/lsp_signature.nvim"
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    }

    use 'simrat39/rust-tools.nvim'

    use {
        'NTBBloodbath/rest.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- debug
    -- use 'mfussenegger/nvim-dap'
    -- use 'mfussenegger/nvim-jdtls'

    use {
        'phaazon/hop.nvim',
        as = 'hop',
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            -- require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
            require'hop'.setup {}
        end
    }

end
)
