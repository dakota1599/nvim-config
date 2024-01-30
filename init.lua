-- Preconfig configurations (lol)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Loading config and plugin setups
require("config")
require("plugins")

-- Postconfig configurations (lol)
vim.cmd("NvimTreeOpen")
vim.cmd("Gitsigns toggle_current_line_blame")
