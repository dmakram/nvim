-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--vim.opt.expandtab = true
--vim.opt.hlsearch = false
--vim.opt.incsearch = true
vim.opt.smartindent = true
vim.opt.colorcolumn = "80"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/.nvim/undodir"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hidden = true
vim.opt.wrap = true
vim.opt.scrolloff = 5
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.relativenumber = false
--vim.o.conceallevel = 1

-- Set your preferred theme here
vim.g.theme = "tron-mocha" -- Options: tron-mocha, tron-red, tron-orange, tron-wave, tron-cyan, tron-drift
