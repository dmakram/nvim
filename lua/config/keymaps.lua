-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Your most important custom ones
map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
vim.keymap.del({ "n", "x", "o" }, "s")
vim.keymap.set("n", "s", "cl", { noremap = true, silent = true, desc = "Change char (classic)" })
-- Git fugitive style
map("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Git Status" })
map("n", "<leader>gd", "<cmd>Gdiffsplit<cr>", { desc = "Git Diff" })
map("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Git Commit" })
map("n", "<leader>gl", "<cmd>Gclog<cr>", { desc = "Git Log" })
map("n", "<leader>gsh", "<cmd>Git push<cr>", { desc = "Git Push" })

-- Keep your window navigation / resize / splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "<leader>hs", "<cmd>split<cr>", { desc = "Horizontal Split" })
map("n", "<leader>vs", "<cmd>vsplit<cr>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close Buffer (like tab)" })
-- Select all (nice to have)
map("n", "<C-a>", "gg<S-v>G", { desc = "Select All" }) -- ── NvimTree (if you still use it instead of neo-tree) ──────────────────
-- map("n", "<C-t>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
-- Comment with Ctrl + /
vim.keymap.set({ "n", "v" }, "<C-/>", "gcc", { remap = true, desc = "Toggle Comment" })
-- In visual mode it will work on selection
-- (because gcc respects the range when coming from visual mode)
-- ── Harpoon (uncomment + configure when you add the plugin) ─────────────
-- map("n", "<leader>n", function() require("harpoon.ui").nav_next()  end, { desc = "Harpoon next" })
-- map("n", "<leader>p", function() require("harpoon.ui").nav_prev()  end, { desc = "Harpoon prev" })
-- If you enabled the toggleterm extra
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })

-- Optional: direction-specific ones (very useful)
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Terminal Horizontal" })
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<cr>", { desc = "Terminal Vertical" })
-- Terminal toggle (floating, in project root dir)
vim.keymap.set("n", "<leader>t", function()
  require("lazyvim.util").terminal(nil, { cwd = require("lazyvim.util").root() })
end, { desc = "Terminal (root dir)" })

-- Optional: also allow it in terminal mode to hide/close
vim.keymap.set("t", "<leader>t", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Gen.nvim

vim.keymap.set({ "n", "v" }, "<leader>]", ":Gen<CR>")
vim.keymap.set("v", "<leader>]", ":Gen Enhance_Grammar_Spelling<CR>")
-- Gen.nvim shortcuts - Visual + Normal mode
local opts = { noremap = true, silent = true, desc = "" }

-- 1. Improve/rewrite documentation (comments)
vim.keymap.set(
  { "n", "v" },
  "<leader>ad",
  ":Gen Enhance_Documentation<CR>",
  vim.tbl_extend("force", opts, { desc = "Gen: Improve Documentation" })
)

-- 2. Explain selected code/block
vim.keymap.set(
  { "n", "v" },
  "<leader>ae",
  ":Gen Explain_Code<CR>",
  vim.tbl_extend("force", opts, { desc = "Gen: Explain Code" })
)

-- 3. Ask for improvements / better ways
vim.keymap.set(
  { "n", "v" },
  "<leader>ai",
  ":Gen Improve_Code<CR>",
  vim.tbl_extend("force", opts, { desc = "Gen: How to improve this code" })
)

-- Optional: General chat (when you want to ask follow-ups)
vim.keymap.set("n", "<leader>ac", ":Gen Chat<CR>", vim.tbl_extend("force", opts, { desc = "Gen: AI Chat" }))

-- Bonus: Very quick general prompt menu
vim.keymap.set({ "n", "v" }, "<leader>aa", ":Gen<CR>", vim.tbl_extend("force", opts, { desc = "Gen: Prompt Menu" }))
