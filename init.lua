if vim.g.vscode then
  -- VSCode extension
  require("vscode_nvim")
else
  -- normal nvim
  require("plugins")
  require("global")
  require("keybindings")
  require("settings")
  require("colorscheme")
  require("variables")
  require("lsp")
  require("dbg")
  require("aucommands")
  require("masoninstaller")
  require("myplugins")
end
