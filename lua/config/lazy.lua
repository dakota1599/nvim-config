local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{"nvim-tree/nvim-web-devicons"},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			--local nt = require("nvim-tree")
			-- nt.setup()
		end,
	},
	{ "EdenEast/nightfox.nvim" },
	{ "lewis6991/gitsigns.nvim", config = function () require('gitsigns').setup() end },
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},

}

local opts = {}

require("lazy").setup(plugins, opts)


