local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
    execute "packadd packer.nvim"
end

return require("packer").startup(function()
    -- Packer can manage itself
    use "glepnir/galaxyline.nvim"
    use "glepnir/lspsaga.nvim"
    use "hrsh7th/nvim-compe"
    use "hrsh7th/vim-vsnip"
    use "jnurmine/Zenburn"
    use "kyazdani42/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "neovim/nvim-lspconfig"
    --use "noahares/nvim-commenter"
    use "nvim-lua/plenary.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-telescope/telescope.nvim"
    use "wbthomason/packer.nvim"
    use 'airblade/vim-rooter'
    use 'kabouzeid/nvim-lspinstall'
    use 'kevinhwang91/nvim-bqf'
    use 'kosayoda/nvim-lightbulb'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'
    use 'nanotee/nvim-lua-guide'
    use 'norcalli/nvim-colorizer.lua'
    use 'onsails/lspkind-nvim'
    use 'unblevable/quick-scope'
    use { "npxbr/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } }
    use {"nvim-treesitter/nvim-treesitter", run=":TSUpdate"}
    use "preservim/nerdcommenter"
    use 'sbdchd/neoformat'
    use "tpope/vim-fugitive"
end
)
