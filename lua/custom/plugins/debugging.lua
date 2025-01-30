local palette = require('catppuccin.palettes').get_palette 'mocha'
return {
  'mfussenegger/nvim-dap',
  event = 'VeryLazy',
  dependencies = {
    { 'rcarriga/nvim-dap-ui', dependencies = { 'nvim-neotest/nvim-nio' } },
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function()
    require 'custom.config.debugging'
  end,
}
