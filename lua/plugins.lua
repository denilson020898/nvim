local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
    execute "packadd packer.nvim"
end

return require("packer").startup(function()
    -- Packer can manage itself
    -- use "tpope/vim-fugitive"
    use 'kevinhwang91/nvim-bqf'
    -- use 'lewis6991/gitsigns.nvim'
    -- use "noahares/nvim-commenter"
    use "TimUntersberger/neogit"
    use "glepnir/galaxyline.nvim"
    use "glepnir/lspsaga.nvim"
    use "hrsh7th/nvim-compe"
    use "hrsh7th/vim-vsnip"
    use "jnurmine/Zenburn"
    use "kyazdani42/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "neovim/nvim-lspconfig"
    use "nvim-lua/plenary.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-treesitter/playground"
    use "p00f/nvim-ts-rainbow"
    use "preservim/nerdcommenter"
    use "wbthomason/packer.nvim"
    use "windwp/nvim-autopairs"
    use 'airblade/vim-rooter'
    use 'akinsho/nvim-bufferline.lua'
    use 'kabouzeid/nvim-lspinstall'
    use 'kosayoda/nvim-lightbulb'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'
    use 'nanotee/nvim-lua-guide'
    use 'norcalli/nvim-colorizer.lua'
    use 'onsails/lspkind-nvim'
    use 'sbdchd/neoformat'
    use { "npxbr/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } }
    use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
end
)
