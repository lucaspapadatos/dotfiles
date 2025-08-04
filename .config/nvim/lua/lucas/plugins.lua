-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("lucas.telescope"),
	{	-- theme configuration for telescope
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				disable_float_background = true
			})
			vim.cmd("colorscheme rose-pine")
		end
	},
	{	-- treesitter
		"nvim-treesitter/nvim-treesitter", 
		branch = 'master', 
		lazy = false, 
		build = ":TSUpdate"
	},
	{	-- treesitter ast
		"nvim-treesitter/playground" 
	},
	{	-- harpoon
		"theprimeagen/harpoon"
	},
	{	-- undo tree
		"mbbill/undotree"
	},
	{	-- fugitive git control
		"tpope/vim-fugitive"
	}

})
