require'nvim-treesitter.configs'.setup {
  -- 添加不同语言
  ensure_installed = { "vim", "vimdoc", "c", "cpp", "python", "java", "html", "css", "javascript", "typescript", "go", "rust", "json", "bash", "lua", "markdown", "markdown_inline" },

  highlight = { enable = true },
  indent = { enable = true },
  autotag = { enable = true },
  -- auto_install = true,

  -- 不同括号颜色区分
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
