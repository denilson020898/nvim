local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
    execute "packadd packer.nvim"
end

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
    use {
      'yamatsum/nvim-nonicons',
      requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- color
    use 'tjdevries/colorbuddy.nvim'
    use 'marko-cerovac/material.nvim'
    use 'sainnhe/sonokai'
    use 'eddyekofo94/gruvbox-flat.nvim'

    -- helpers
    use 'nanotee/nvim-lua-guide'
    use "hrsh7th/nvim-compe"
    use 'b3nj5m1n/kommentary'
    use "TimUntersberger/neogit"
    use 'sindrets/diffview.nvim'
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
    use "nvim-treesitter/playground"
    use "windwp/nvim-autopairs"
    use 'airblade/vim-rooter'
    use "windwp/nvim-ts-autotag"
    use "haringsrob/nvim_context_vt"
    use 'simrat39/symbols-outline.nvim'

    use "rafamadriz/friendly-snippets"
    use "hrsh7th/vim-vsnip"
    use "glepnir/indent-guides.nvim"

    use 'rmagatti/auto-session'
    use {
      'rmagatti/session-lens',
      requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
      -- config = function()
      --   require('session-lens').setup({--[[your custom config--]]})
      -- end
    }

    use 'windwp/nvim-spectre'
    use 'gennaro-tedesco/nvim-jqx'

    -- lsp
    use "neovim/nvim-lspconfig"
    use 'kabouzeid/nvim-lspinstall'
    use "nvim-lua/lsp_extensions.nvim"
    use 'folke/lsp-colors.nvim'
    use "ray-x/lsp_signature.nvim"
    use 'simrat39/rust-tools.nvim'

    -- debug
    -- use 'mfussenegger/nvim-dap'
    -- use 'mfussenegger/nvim-jdtls'

end
)
