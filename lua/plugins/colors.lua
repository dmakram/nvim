return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				local themes = {
					mocha = "colors.tron-mocha.load",
					red = "colors.tron-red.load",
					cyan = "colors.tron-cyan.load",
					orange = "color.tron-orange.load",
					wave = "colors.tron-wave.load",
					drift = "colors.tron-drift.load",
					-- Add more themes as needed
				}
				local theme = vim.g.theme or "mocha"

				if themes[theme] then
					return require(themes[theme])()
				else
					vim.notify("Theme not found: " .. theme, vim.log.ERROR)
					return require("plugins.colors.tron-mocha").load() -- Default theme
				end
			end,
		},
	},
}
