local function map(mode, bind, exec, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {} --empty opt for maps with no extra options

--[[ 
    MAPPING:
	map takes 4 args:
		The first is the type, whether in all, normal, insert etc. (reference: https://github.com/nanotee/nvim-lua-guide#defining-mappings)
		The Second Arg is the keybind. Just like normal vim way
		The Third is the command to execute
		The Fourth is other extra options

	Example:  (toggles line numbers)
		map("n", "<C-n>", ":set rnu!<CR>", opt)
--]]

-- NOTE: these are all keymaps that are not in which-key.lua (basic keymaps)
--       most keymaps related to a plugin or non-basic functionality is in which-key.lua

vim.g.mapleader = ' ' -- Map leader key to space
map('n', '<leader>nf', ':Neoformat<CR>', { noremap = true }) -- format current buffer with neoformat
map('n', '<leader>~', ':Dashboard<CR>', opt) -- map show dashboard
-- map('n', '<leader>ln', ':set rnu!<CR>', opt) -- toggle relative line numbers
-- map('n', '<leader>nh', '<cmd>nohlsearch<CR>', opt) -- Toggle highlights

-- clipboard mappings
map('n', '<leader>ya', ':%y+<CR>', opt) -- Copy content of entire buffer to system clipboard
map('n', '<leader>yl', '"+yy', opt) -- yank current line into system clipboard

-- better window movement
map('n', '<leader>h', '<C-w>h', {silent = true})
map('n', '<leader>j', '<C-w>j', {silent = true})
map('n', '<leader>k', '<C-w>k', {silent = true})
map('n', '<leader>l', '<C-w>l', {silent = true})

-- better indenting
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

-- Escape remaps
map('i', 'jk', '<ESC>', {noremap = true, silent = true})
map('i', 'kj', '<ESC>', {noremap = true, silent = true})

-- buffer management
-- map('n', '<leader>bh', ':bf<CR>', { noremap = true })
-- map('n', '<leader>bk', ':bn<CR>', { noremap = true })
-- map('n', '<leader>bj', ':bp<CR>', { noremap = true })
-- map('n', '<leader>bl', ':bl<CR>', { noremap = true })
-- map('n', '<leader>bd', ':bd<CR>', { noremap = true })

-- telescope pullup
-- map('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
-- map('n', '<leader>fF', ':Telescope file_browser<CR>', { noremap = true })
-- map('n', '<leader>fg', ':Telescope git_commits<CR>', { noremap = true })
-- map('n', '<leader>fG', ':Telescope git_branches<CR>', { noremap = true })

-- hop.nvim
-- map('n', '<leader>hH', ':HopWord<CR>', opt)
-- map('n', '<leader>hh', ':HopLine<CR>', opt)
