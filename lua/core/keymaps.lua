
-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap = true, silent = true }

-- Disable default space behavior in normal/visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', opts)

-- Move cursor through wrapped lines
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Clear search highlight
vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)

-- Delete char without affecting default register
vim.keymap.set('n', 'x', '"_x', opts)

-- Scroll and center cursor
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Search next/prev and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

-- Navigate between splits with Ctrl + arrows
vim.keymap.set('n', '<C-Up>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':wincmd l<CR>', opts)

-- Resize splits with Alt + arrows
vim.keymap.set('n', '<A-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<A-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<A-Right>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<A-Left>', ':vertical resize +2<CR>', opts)

-- Move cursor in file with arrow keys
vim.keymap.set('n', '<Up>', 'k', opts)
vim.keymap.set('n', '<Down>', 'j', opts)
vim.keymap.set('n', '<Left>', 'h', opts)
vim.keymap.set('n', '<Right>', 'l', opts)

-- Visual mode: stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Move selected text up/down
vim.keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
vim.keymap.set('v', '<A-k>', ':m .-2<CR>==', opts)

-- Keep last yanked text when pasting over selection
vim.keymap.set('v', 'p', '"_dP', opts)

-- Yank to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], opts)
vim.keymap.set('n', '<leader>Y', [["+Y]], opts)

-- Exit insert mode quickly
vim.keymap.set('i', 'jk', '<ESC>', opts)
vim.keymap.set('i', 'kj', '<ESC>', opts)

-- Toggle line wrap
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)
