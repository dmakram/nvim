local M = {}
M.name = "tron-cyan"

local palette = {
	bg = "#0b1118",
	bg_alt = "#0f161f",
	bg_light = "#132030",
	fg = "#e8e4d9",
	fg_dim = "#b0a89c",
	cyan = "#00ddff", -- primary vivid cyan
	cyan_bright = "#33eeff",
	cyan_dim = "#00aadd",
	red = "#ff1a38", -- secondary red accents
	red_bright = "#ff3355",
	orange = "#ff7733",
	yellow = "#ffdd57",
	green = "#4caf50",
	purple = "#ab47bc",
	gray = "#4a5664",
	gray_dark = "#2a323c",
	border = "#1a2535",
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
	vim.o.background = "dark"
	vim.o.termguicolors = true

	hl("Normal", { fg = palette.fg, bg = palette.bg })
	hl("NormalFloat", { fg = palette.fg, bg = palette.bg_alt })
	hl("Comment", { fg = palette.gray, italic = true })
	hl("Constant", { fg = palette.orange })
	hl("String", { fg = palette.cyan })
	hl("Character", { fg = palette.cyan })
	hl("Number", { fg = palette.orange })
	hl("Boolean", { fg = palette.orange })

	hl("Identifier", { fg = palette.cyan_bright })
	hl("Function", { fg = palette.cyan_bright })
	hl("Statement", { fg = palette.cyan_dim })
	hl("Conditional", { fg = palette.cyan })
	hl("Repeat", { fg = palette.cyan })
	hl("Operator", { fg = palette.fg_dim })
	hl("Keyword", { fg = palette.cyan_bright })
	hl("Exception", { fg = palette.orange })

	hl("PreProc", { fg = palette.purple })
	hl("Type", { fg = palette.cyan_dim })
	hl("Special", { fg = palette.orange })
	hl("Underlined", { fg = palette.cyan, underline = true })
	hl("Error", { fg = palette.red_bright, bg = palette.bg_alt, bold = true })
	hl("Todo", { fg = palette.yellow, bg = palette.bg_light, bold = true })

	hl("CursorLine", { bg = palette.bg_light })
	hl("LineNr", { fg = palette.gray_dark })
	hl("CursorLineNr", { fg = palette.cyan_bright, bold = true })
	hl("SignColumn", { bg = palette.bg })
	hl("VertSplit", { fg = palette.border })
	hl("Folded", { fg = palette.gray, bg = palette.bg_alt })
	hl("Visual", { bg = palette.cyan_dim, fg = palette.bg })

	-- Treesitter
	hl("@variable", { fg = palette.fg })
	hl("@function", { fg = palette.cyan_bright })
	hl("@function.call", { fg = palette.cyan_bright })
	hl("@keyword", { fg = palette.cyan_bright })
	hl("@keyword.function", { fg = palette.cyan_dim })
	hl("@string", { fg = palette.cyan })
	hl("@string.escape", { fg = palette.orange })
	hl("@type", { fg = palette.cyan_dim })
	hl("@constant", { fg = palette.orange })
	hl("@property", { fg = palette.fg_dim })
	hl("@comment", { fg = palette.gray, italic = true })
	hl("@punctuation", { fg = palette.gray_dark })
	hl("@operator", { fg = palette.fg_dim })
	hl("@tag", { fg = palette.cyan_bright })

	-- Plugins
	hl("TelescopeBorder", { fg = palette.cyan_dim, bg = palette.bg_alt })
	hl("TelescopePromptPrefix", { fg = palette.cyan_bright })
	hl("TelescopeSelection", { bg = palette.bg_light, fg = palette.cyan_bright })

	hl("LazyButton", { fg = palette.bg, bg = palette.cyan_bright })
	hl("LazyH1", { fg = palette.bg, bg = palette.cyan_bright })
	hl("LazySpecial", { fg = palette.cyan_bright })

	hl("ErrorMsg", { fg = palette.bg, bg = palette.red_bright, bold = true })
	hl("WarningMsg", { fg = palette.bg, bg = palette.orange, bold = true })
	hl("ModeMsg", { fg = palette.cyan_bright, bold = true })
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
