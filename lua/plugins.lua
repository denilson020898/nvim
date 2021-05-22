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
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use "kevinhwang91/nvim-bqf"
    use 'norcalli/nvim-colorizer.lua'
    -- use 'akinsho/nvim-bufferline.lua'
    use 'romgrk/barbar.nvim'
    use "akinsho/nvim-toggleterm.lua"

    -- color
    use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    use "jnurmine/Zenburn"
    use "nanotech/jellybeans.vim"
    use 'marko-cerovac/material.nvim'
    use 'tjdevries/colorbuddy.nvim'
    use "RRethy/nvim-base16"

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

    use 'windwp/nvim-spectre'
    use 'gennaro-tedesco/nvim-jqx'

    -- lsp
    use "neovim/nvim-lspconfig"
    use 'kabouzeid/nvim-lspinstall'
    use "nvim-lua/lsp_extensions.nvim"
    use 'folke/lsp-colors.nvim'
    use "ray-x/lsp_signature.nvim"

    -- debug
    -- use 'mfussenegger/nvim-dap'
    -- use 'mfussenegger/nvim-jdtls'

end
)
