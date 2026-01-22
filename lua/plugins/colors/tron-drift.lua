local M = {}
M.name = "tron-drift"

local palette = {
	bg = "#1a1b26",
	bg_dark = "#11121d",
	bg_light = "#24283b",
	fg = "#c0caf5",
	fg_dim = "#9abdf5",
	red = "#f7768e", -- Ares pink-red
	red_dim = "#e06c75",
	cyan = "#7dcfff",
	orange = "#ff9e64",
	yellow = "#e0af68",
	green = "#9ece6a",
	purple = "#bb9af7",
	gray = "#565f89",
	border = "#414868",
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
	vim.o.background = "dark"
	vim.o.termguicolors = true

	hl("Normal", { fg = palette.fg, bg = palette.bg })
	hl("Comment", { fg = palette.gray, italic = true })
	hl("String", { fg = palette.green })
	hl("Function", { fg = palette.red })
	hl("Keyword", { fg = palette.red })
	hl("Type", { fg = palette.cyan })
	hl("CursorLine", { bg = palette.bg_light })
	hl("CursorLineNr", { fg = palette.red })
	hl("LineNr", { fg = palette.gray })

	-- Treesitter + plugins similar to mocha (copy-paste or adapt as needed)
	hl("@function", { fg = palette.red })
	hl("@keyword", { fg = palette.red })
	hl("TelescopePromptPrefix", { fg = palette.red })
	hl("NeoTreeRootName", { fg = palette.red, bold = true })
	hl("LazyButton", { fg = palette.bg, bg = palette.red })
	-- ... add more if needed from previous examples
end

function M.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	M.setup()
	vim.g.colors_name = M.name
end

return M
