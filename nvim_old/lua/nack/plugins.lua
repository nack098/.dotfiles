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

require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  'nvim-lualine/lualine.nvim',
  'nvim-lua/plenary.nvim',
  'onsails/lspkind-nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('cmp').setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end
        },
        sources = {
          { name = 'luasnip', option = { show_autosnippets = true } },
        }
      })
    end
  },
  'wakatime/vim-wakatime',
  'saadparwaiz1/cmp_luasnip',
  'neovim/nvim-lspconfig',
  'jose-elias-alvarez/null-ls.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  {
    'glepnir/lspsaga.nvim', -- LSP UIs
    branch = "main",
    config = function()
      require('lspsaga').setup({})
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = { 'rafamadriz/friendly-snippets' }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
  },
  'kyazdani42/nvim-web-devicons',
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  {
    'numToStr/Comment.nvim',
    lazy = false,
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  },
  'norcalli/nvim-colorizer.lua',
  'folke/zen-mode.nvim',
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  'akinsho/nvim-bufferline.lua',
  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim'
})
