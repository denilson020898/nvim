require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
require 'nvim-treesitter.install'.compilers = {  "gcc", "clang", "cl"  }

