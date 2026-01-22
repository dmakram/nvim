local M = {}
M.name = "tron-orange"

local palette = {
	bg = "#0b1118",
	bg_alt = "#0f161f",
	bg_light = "#132030",
	fg = "#e8e4d9",
	fg_dim = "#b0a89c",
	orange = "#ff7733", -- primary vivid orange
	orange_bright = "#ff994d",
	orange_dim = "#cc5522",
	red = "#ff1a38", -- secondary red accents
	red_bright = "#ff3355",
	cyan = "#40c4ff",
	cyan_dim = "#1e88e5",
	cyan_bright = "#66d9ff",
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
	hl("Constant", { fg = palette.yellow })
	hl("String", { fg = palette.cyan })
	hl("Character", { fg = palette.cyan })
	hl("Number", { fg = palette.yellow })
	hl("Boolean", { fg = palette.yellow })

	hl("Identifier", { fg = palette.orange_bright })
	hl("Function", { fg = palette.orange_bright })
	hl("Statement", { fg = palette.orange_dim })
	hl("Conditional", { fg = palette.orange })
	hl("Repeat", { fg = palette.orange })
	hl("Operator", { fg = palette.fg_dim })
	hl("Keyword", { fg = palette.orange_bright })
	hl("Exception", { fg = palette.red_bright })

	hl("PreProc", { fg = palette.purple })
	hl("Type", { fg = palette.cyan_dim })
	hl("Special", { fg = palette.yellow })
	hl("Underlined", { fg = palette.cyan, underline = true })
	hl("Error", { fg = palette.red_bright, bg = palette.bg_alt, bold = true })
	hl("Todo", { fg = palette.yellow, bg = palette.bg_light, bold = true })

	hl("CursorLine", { bg = palette.bg_light })
	hl("LineNr", { fg = palette.gray_dark })
	hl("CursorLineNr", { fg = palette.orange_bright, bold = true })
	hl("SignColumn", { bg = palette.bg })
	hl("VertSplit", { fg = palette.border })
	hl("Folded", { fg = palette.gray, bg = palette.bg_alt })
	hl("Visual", { bg = palette.orange_dim, fg = palette.bg })

	-- Treesitter
	hl("@variable", { fg = palette.fg })
	hl("@function", { fg = palette.orange_bright })
	hl("@function.call", { fg = palette.orange_bright })
	hl("@keyword", { fg = palette.orange_bright })
	hl("@keyword.function", { fg = palette.orange_dim })
	hl("@string", { fg = palette.cyan })
	hl("@string.escape", { fg = palette.red_bright })
	hl("@type", { fg = palette.cyan_dim })
	hl("@constant", { fg = palette.yellow })
	hl("@property", { fg = palette.fg_dim })
	hl("@comment", { fg = palette.gray, italic = true })
	hl("@punctuation", { fg = palette.gray_dark })
	hl("@operator", { fg = palette.fg_dim })
	hl("@tag", { fg = palette.orange_bright })

	-- Plugins
	hl("TelescopeBorder", { fg = palette.orange_dim, bg = palette.bg_alt })
	hl("TelescopePromptPrefix", { fg = palette.orange_bright })
	hl("TelescopeSelection", { bg = palette.bg_light, fg = palette.orange_bright })

	hl("LazyButton", { fg = palette.bg, bg = palette.orange_bright })
	hl("LazyH1", { fg = palette.bg, bg = palette.orange_bright })
	hl("LazySpecial", { fg = palette.orange_bright })

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
