require('blink.cmp').setup {
  keymap = {
    ['<C-u>'] = { 'scroll_documentation_up' },
    ['<C-d>'] = { 'scroll_documentation_down' },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
    providers = {
      snippets = {
        score_offset = 1000,
      },
    },
  },
  completion = {
    menu = {
      border = 'single',
      draw = {
        treesitter = { 'lsp' },
        -- columns = { { 'label', 'label_description', gap = 1 }, { 'kind_icon', 'kind' } },
        columns = { { 'kind_icon' }, { 'label', gap = 1 } },
        components = {
          kind_icon = {
            highlight = function(ctx)
              local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
              return hl
            end,
          },
          kind = {
            highlight = function(ctx)
              local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
              return hl
            end,
          },
          label = {
            text = function(ctx)
              return require('colorful-menu').blink_components_text(ctx)
            end,
            highlight = function(ctx)
              return require('colorful-menu').blink_components_highlight(ctx)
            end,
          },
        },
      },
      scrollbar = false,
    },
    documentation = {
      window = { border = 'single', scrollbar = false },
      auto_show = true,
      auto_show_delay_ms = 500,
    },
  },
  signature = {
    enabled = true,
    window = { border = 'single' },
  },
  appearance = {
    nerd_font_variant = 'normal',
  },
}
