return {
  {
    'mfussenegger/nvim-dap',
  },

  {
    'theHamsta/nvim-dap-virtual-text',
    dependencies = {
      'mfussenegger/nvim-dap',
    }
  },

  {
  "iabdelkareem/csharp.nvim",
  dependencies = {
    "williamboman/mason.nvim", 
    "mfussenegger/nvim-dap",
  },
  config = function ()
      require('mason').setup() -- Mason setup must run before csharp, only if you want to use omnisharp
      require('csharp').setup()
  end
}}
