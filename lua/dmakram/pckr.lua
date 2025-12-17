local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require("pckr").add{
  "morhetz/gruvbox";

  {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"};
  "nvim-tree/nvim-web-devicons";
  "lewis6991/gitsigns.nvim";
 -- "romgrk/barbar.nvim";
  "numToStr/Comment.nvim";
  "windwp/nvim-autopairs";
  "lukas-reineke/indent-blankline.nvim";


  {"VonHeikemen/lsp-zero.nvim", branch = "v4.x"},
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'};


  -- Your favorites that are still great
  {"nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim"};
  "ThePrimeagen/harpoon";
  "mbbill/undotree";
  "tpope/vim-fugitive";
  {"nvim-lualine/lualine.nvim", requires = "nvim-tree/nvim-web-devicons"};

  "lewis6991/gitsigns.nvim";                -- git signs in the gutter
  {"romgrk/barbar.nvim", requires = "nvim-tree/nvim-web-devicons"}; -- actually good buffer tabs
  "numToStr/Comment.nvim";                  -- gcc / gc in visual
  "windwp/nvim-autopairs";                  -- replaces jiangmiao/auto-pairs, faster + treesitter aware
  "lukas-reineke/indent-blankline.nvim";    -- indent guides
  "folke/which-key.nvim";
  "nvim-tree/nvim-tree.lua";

}

