return {
  'stevearc/oil.nvim',
  lazy = false,
  dependencies = { { 'echasnovski/mini.icons', lazy = false } },
  config = function()
    require 'custom.config.oil'
  end,
}
