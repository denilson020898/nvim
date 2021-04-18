local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
    execute "packadd packer.nvim"
end

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "TimUntersberger/neogit"
    use "glepnir/lspsaga.nvim"
    use "hrsh7th/nvim-compe"
    use "hrsh7th/vim-vsnip"
    use "jnurmine/Zenburn"
    use "kyazdani42/nvim-tree.lua"
    use "neovim/nvim-lspconfig"
    use "nvim-lua/popup.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-treesitter/playground"
    use "p00f/nvim-ts-rainbow"
    use "wbthomason/packer.nvim"
    use "windwp/nvim-autopairs"
    use 'airblade/vim-rooter'
    use 'akinsho/nvim-bufferline.lua'
    use 'b3nj5m1n/kommentary'
    use 'kabouzeid/nvim-lspinstall'
    use 'kosayoda/nvim-lightbulb'
    use 'kyazdani42/nvim-web-devicons'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'
    use 'nanotee/nvim-lua-guide'
    use 'norcalli/nvim-colorizer.lua'
    use 'onsails/lspkind-nvim'
    use 'sbdchd/neoformat'
    use { "npxbr/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } }
    use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
    use 'hoob3rt/lualine.nvim'
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end
    }
    use "kevinhwang91/nvim-bqf"
end
)
