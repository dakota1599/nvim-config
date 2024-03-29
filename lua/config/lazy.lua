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
	{
		'NvChad/nvim-colorizer.lua',
		config = function ()
			require('colorizer').setup()
		end
	},
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
--        config = function ()
--            require('bufferline').setup()
--        end
    },
    {
        'neoclide/coc.nvim',
        branch = "master",
        build = "yarn install --frozen-lockfile",
        config = function()
            --require('coc').setup()
            --vim.cmd('CocInstall coc-java coc-json coc-tsserver coc-clangd coc-pyright')
        end
    },
    { "elentok/format-on-save.nvim" },
}

local opts = {}

require("lazy").setup(plugins, opts)


