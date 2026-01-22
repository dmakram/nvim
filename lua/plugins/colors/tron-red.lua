local M = {}

M.name = "tron-red"

local palette = {
	bg = "#050508", -- deeper black (screenshot bg)
	bg_alt = "#0c0c12", -- very dark alt for floats/panels
	bg_light = "#121218", -- subtle lift for cursorline/selections
	fg = "#e0e0e8", -- pale cool-white text (readable, slight blue tint)
	fg_dim = "#a0a0b0",
	red = "#ff1a2e", -- vivid screen red (progress bar / payload text)
	red_bright = "#ff334c", -- brighter glow version
	red_dim = "#c81028", -- muted/crimson for dim elements
	cyan = "#00ccff", -- strong Tron cyan (circuits, strings)
	cyan_dim = "#0099cc",
	cyan_bright = "#33ddff",
	orange = "#ff6600", -- rare accent (numbers, constants)
	yellow = "#ffcc00",
	green = "#00cc99", -- very rare
	purple = "#bb66ff",
	gray = "#404050",
	gray_dark = "#202028",
	border = "#101018", -- near-invisible borders
}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
	vim.o.background = "dark"
	vim.o.termguicolors = true

	-- ── Core ──────────────────────────────────────────────
	hl("Normal", { fg = palette.fg, bg = palette.bg })
	hl("NormalFloat", { fg = palette.fg, bg = palette.bg_alt })
	hl("Comment", { fg = palette.gray, italic = true })
	hl("Constant", { fg = palette.orange })
	hl("String", { fg = palette.cyan })
	hl("Character", { fg = palette.cyan })
	hl("Number", { fg = palette.orange })
	hl("Boolean", { fg = palette.orange })

	hl("Identifier", { fg = palette.red_bright })
	hl("Function", { fg = palette.red_bright })
	hl("Statement", { fg = palette.red_dim })
	hl("Conditional", { fg = palette.red })
	hl("Repeat", { fg = palette.red })
	hl("Operator", { fg = palette.fg_dim })
	hl("Keyword", { fg = palette.red_bright })
	hl("Exception", { fg = palette.orange })

	hl("PreProc", { fg = palette.purple })
	hl("Type", { fg = palette.cyan_dim })
	hl("Special", { fg = palette.orange })
	hl("Underlined", { fg = palette.cyan, underline = true })
	hl("Error", { fg = palette.red_bright, bg = palette.bg_alt, bold = true })
	hl("Todo", { fg = palette.yellow, bg = palette.bg_light, bold = true })

	-- ── UI ───────────────────────────────────────────────
	hl("CursorLine", { bg = palette.bg_light })
	hl("LineNr", { fg = palette.gray_dark })
	hl("CursorLineNr", { fg = palette.red_bright, bold = true })
	hl("SignColumn", { bg = palette.bg })
	hl("VertSplit", { fg = palette.border })
	hl("Folded", { fg = palette.gray, bg = palette.bg_alt })
	hl("Visual", { bg = palette.red_dim, fg = palette.bg })

	-- ── Treesitter ───────────────────────────────────────
	hl("@variable", { fg = palette.fg })
	hl("@function", { fg = palette.red_bright })
	hl("@function.call", { fg = palette.red_bright })
	hl("@keyword", { fg = palette.red_bright })
	hl("@keyword.function", { fg = palette.red_dim })
	hl("@string", { fg = palette.cyan })
	hl("@string.escape", { fg = palette.orange })
	hl("@type", { fg = palette.cyan_dim })
	hl("@constant", { fg = palette.orange })
	hl("@property", { fg = palette.fg_dim })
	hl("@comment", { fg = palette.gray, italic = true })
	hl("@punctuation", { fg = palette.gray_dark })
	hl("@operator", { fg = palette.fg_dim })
	hl("@tag", { fg = palette.red_bright })

	-- ── Plugins ──────────────────────────────────────────
	hl("TelescopeBorder", { fg = palette.red_dim, bg = palette.bg_alt })
	hl("TelescopePromptPrefix", { fg = palette.red_bright })
	hl("TelescopeSelection", { bg = palette.bg_light, fg = palette.red_bright })

	hl("LazyButton", { fg = palette.bg, bg = palette.red_bright })
	hl("LazyH1", { fg = palette.bg, bg = palette.red_bright })
	hl("LazySpecial", { fg = palette.red_bright })

	-- Strong red emphasis for status/warnings
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
