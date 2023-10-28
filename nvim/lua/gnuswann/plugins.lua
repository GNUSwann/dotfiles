local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

--------------------------------------------------------------------------------------------------

local plugins = {
   {
      'goolord/alpha-nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
   },
   "tiagovla/tokyodark.nvim",
   "nvim-tree/nvim-tree.lua",
   "nvim-tree/nvim-web-devicons",
   "nvim-lualine/lualine.nvim",
   "lambdalisue/suda.vim",
   "nvim-treesitter/nvim-treesitter",
   "ThePrimeagen/harpoon",
   "mbbill/undotree",
   "tpope/vim-fugitive",
   "lukas-reineke/indent-blankline.nvim",
   "jiangmiao/auto-pairs",
   "tpope/vim-surround",
   "ggandor/leap.nvim",
   "mhartington/formatter.nvim",
   "numToStr/Comment.nvim",
   {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.0",
      dependencies = { { "nvim-lua/plenary.nvim" } },
   },
   "nvim-lua/popup.nvim",
   "nvim-telescope/telescope-media-files.nvim",
   -- LSP Support
   {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v2.x",
      dependencies = {
         { "neovim/nvim-lspconfig" },
         {
            "williamboman/mason.nvim",
            build = function()
               pcall(vim.api.nvim_command, "MasonUpdate")
            end,
         },
         { "williamboman/mason-lspconfig.nvim" },

         -- Autocompletion
         { "hrsh7th/nvim-cmp" },
         { "hrsh7th/cmp-nvim-lsp" },
         { "L3MON4D3/LuaSnip" },
         { "saadparwaiz1/cmp_luasnip" },
         { "rafamadriz/friendly-snippets" },
      },
   },
}

local opts = {}

--------------------------------------------------------------------------------------------------

require("lazy").setup(plugins, opts)
