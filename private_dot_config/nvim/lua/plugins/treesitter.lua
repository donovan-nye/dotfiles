local M = {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function ()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = { 'lua', 'json',  },
      auto_install = true,
      highlight = {
        enable = true,
        disable = function(lang, buf) 
          local max_filesize = 500 * 1024
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end
      },
    })
  end
}

return { M }

