local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o

cmd('syntax enable') -- syntax highlighting
o.nu = true -- line numbers
o.mouse = 'a' -- mouse controls
o.modeline = true
o.modelines = 5

-- Tab settings
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

opt.undofile = true
opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
o.completeopt = 'menuone,noselect'

vim.opt.termguicolors = true
opt.clipboard = "unnamedplus" -- allows neovim to access system clipboard
opt.relativenumber = false -- relative line numbers
opt.wrap = false -- do not wrap lines around when too long
