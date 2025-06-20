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
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      disable_background = true,
      disable_float_background = true
    })
    vim.cmd("colorscheme rose-pine")
	vim.api.nvim_set_hl(0, "Keyword", { fg = "#b00000" })
	vim.api.nvim_set_hl(0, "Statement", { fg = "#b00000" })
	vim.cmd [[
	    highlight String guifg=#6bffe1
	]]
  end
})
