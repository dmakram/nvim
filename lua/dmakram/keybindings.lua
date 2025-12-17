
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<Leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
-- Fugitive
keymap.set("n", "<leader>gs",":Git<CR>")
keymap.set("n", "<leader>gd",":Gdiffsplit<CR>")
keymap.set("n", "<leader>gc",":Git commit<CR>")
keymap.set("n", "<leader>gl",":Glog<CR>")
keymap.set("n", "<leader>gsh",":Git push<CR>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- Split window
keymap.set("n", "<leader>hs", ":split<Return>", opts)
keymap.set("n", "<leader>vs", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-l>", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- Diagnostics
keymap.set("n", "<C-d>", function()
	vim.diagnostic.goto_next()
end, opts)

--Nerd Tree
keymap.set ("n", "<C-t>", ":NvimTreeToggle<CR>")

-- Harpoon
--keymap.set("n", '<leader>n', require('harpoon.ui').nav_next)
--keymap.set("n", '<leader>p', require('harpoon.ui').nav_prev)



