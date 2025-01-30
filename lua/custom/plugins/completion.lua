---@diagnostic disable-next-line: unused-local
local custom_utils = require 'custom.utils'
return {
  'saghen/blink.cmp',
  build = 'cargo build --release',
  config = function()
    require 'custom.config.completion'
  end,
}
