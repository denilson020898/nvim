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
    -- use 'kosayoda/nvim-lightbulb'
    use 'hoob3rt/lualine.nvim'
    use "kyazdani42/nvim-tree.lua"
    use 'kyazdani42/nvim-web-devicons'
    use "nvim-lua/popup.nvim"
    use 'nvim-lua/plenary.nvim'
    -- use {
    --     'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    --     config = function() require('gitsigns').setup() end
    -- }
    use "kevinhwang91/nvim-bqf"
    use 'norcalli/nvim-colorizer.lua'
    use "p00f/nvim-ts-rainbow"
    use 'akinsho/nvim-bufferline.lua'

    -- color
    use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    use "jnurmine/Zenburn"
    use "nanotech/jellybeans.vim"

    -- helpers
    use 'nanotee/nvim-lua-guide'
    use "hrsh7th/nvim-compe"
    use 'sbdchd/neoformat'
    use 'b3nj5m1n/kommentary'
    use "hrsh7th/vim-vsnip"
    use "TimUntersberger/neogit"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
    use "nvim-treesitter/playground"
    use "windwp/nvim-autopairs"
    use 'airblade/vim-rooter'

    -- lsp
    use "neovim/nvim-lspconfig"
    use 'kabouzeid/nvim-lspinstall'
    use "nvim-lua/lsp_extensions.nvim"
    -- use "glepnir/lspsaga.nvim"
    -- use 'onsails/lspkind-nvim'

    -- debug
    -- use 'mfussenegger/nvim-dap'
    -- use 'mfussenegger/nvim-jdtls'

end
)
