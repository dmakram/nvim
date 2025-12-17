--function  MyColors(color)
  --  color = color or "gruvbox"
   -- vim.cmd.colorscheme(color)
   -- vim.api.nvim_set_hl(0,"Normal",{ bg ="none" })
   -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--end
--MyColors()
vim.cmd([[
augroup TransparentBackground
autocmd!
autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
autocmd ColorScheme * highlight NonText ctermbg=none guibg=none
augroup END
]])
vim.cmd("colorscheme gruvbox")


