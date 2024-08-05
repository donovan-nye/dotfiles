return {
  { 'yuttie/comfortable-motion.vim' },
  { 'tpope/vim-surround' },

	{ 
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-night]])
      vim.cmd([[highlight LineNr gui=bold guifg=#e9f768]])
      vim.cmd([[highlight LineNrAbove guifg=#8b8c6b]])
      vim.cmd([[highlight LineNrBelow guifg=#8b8c6b]])
		end,
	},

  { "folke/which-key.nvim", lazy = true },

  {  
    'nvim-telescope/telescope-fzf-native.nvim', 
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release', 
    lazy = true,  
  },

  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    branch = '0.1.x',
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim', 
      'nvim-lua/plenary.nvim'
    },
  },

  {
    'folke/twilight.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    }
  }
}
