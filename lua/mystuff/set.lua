-- This makes the insert cursor thick
-- vim.opt.guicursor = ""


vim.opt.nu = true -- Current line number doesn't show without this for some reason.
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

-------------- Filetype specific settings --------------
vim.filetype.add({ extension = { templ = "templ" } })


-------------- Needed for Metals LSP -------------------
vim.opt_global.shortmess:remove("F")

