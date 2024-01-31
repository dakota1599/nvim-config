
local M = {}

M.setup = function () 
	vim.opt.number = true
	vim.opt.smarttab = true
	vim.cmd("colorscheme terafox")
	vim.g.mapleader = ' '
	vim.opt.autochdir = true
	vim.opt.termguicolors = true

	-- Keybindings
	vim.keymap.set('n', '<leader>cc', ':q!<CR>', {silent = true})
	vim.keymap.set('n', '<C-s>', ':w<CR>', {})
	vim.keymap.set('n', '<C-c>', ':qa!<CR>',{})
	vim.keymap.set('n', '<C-x>', ':q!<CR>', {})
	vim.keymap.set('n', '<leader>nn', ':new<CR>', {})
	vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>', {})

end

return M
