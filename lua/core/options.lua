local opt = vim.opt

-- 行号
opt.number = true
opt.relativenumber = false

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
-- opt.wrap = false
opt.wrap = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观。终端真颜色，会覆盖终端背景图片；左侧多一列，方便debug和插件提示；主题
opt.termguicolors = true
opt.signcolumn = "yes"
-- vim.cmd[[colorscheme tokyonight-moon]]
vim.cmd[[colorscheme molokai]]

