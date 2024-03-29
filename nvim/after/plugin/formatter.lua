-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,

  filetype = {
    python = {
      require("formatter.filetypes.python").black,
    },

    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.keymap.set('n', '<leader>fm', ":Format<CR>", { desc = "Format file" })
