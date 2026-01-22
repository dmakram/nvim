return {
  -- {
  --   "catgoose/nvim-colorizer.lua",
  --   event = "VeryLazy", -- or "BufReadPre *.css,*.scss,*.html,*.js,*.ts"
  --   opts = {
  --     filetypes = { "*" }, -- or limit to { "css", "scss", "html", "javascript", "typescript" }
  --     user_default_options = {
  --       RGB = true, -- #RGB hex codes
  --       RRGGBB = true, -- #RRGGBB hex codes
  --       names = true, -- "red" etc.
  --       RRGGBBAA = true, -- #RRGGBBAA
  --       rgb_fn = true, -- CSS rgb() and rgba()
  --       hsl_fn = true, -- CSS hsl() and hsla()
  --       css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  --       css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
  --       mode = "background", -- "foreground" or "background"
  --       tailwind = false, -- Enable Tailwind colors (true = normal, "lsp" = lsp only)
  --     },
  --     buftypes = {}, -- empty = highlight in all buffers
  --   },
  -- },
  "brenoprata10/nvim-highlight-colors",
  event = "VeryLazy",
  opts = {
    render = "virtual", -- or "background"
    virtual_symbol_position = "inline",
    enable_hex = true,
    enable_rgb = true,
    enable_hsl = true,
    enable_var_usage = true,
    enable_named_colors = true,
    enable_tailwind = true, -- very useful for Tailwind CSS
  },
}
