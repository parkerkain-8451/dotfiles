-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Required installation for Lazy Package Manager
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

-- Space for the leader key
vim.g.mapleader = " "

require("lazy").setup("plugins")

-- Colorsheme settings
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Relative Line Numbers
vim.wo.relativenumber = true

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
