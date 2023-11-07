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
vim.wo.number = true
vim.wo.relativenumber = true

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Change tab width
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- Remove highlighting on double ESC
vim.keymap.set("n", "<ESC><ESC>", "<cmd>:noh<CR>", { noremap = true, silent = true })

-- Kick off COQ
local lsp = require "lspconfig"
local coq = require "coq"

lsp.tsserver.setup{}
lsp.tsserver.setup(coq.lsp_ensure_capabilities{})
vim.cmd('COQnow -s')
