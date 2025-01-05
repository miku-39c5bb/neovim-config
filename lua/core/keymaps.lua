vim.g.mapleader = " "

local keymap = vim.keymap

-- ------------- 插入模式 -------------
keymap.set("i", "jk", "<ESC>")

-- ------------- 视觉模式 -------------
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

-- ------------- 正常模式 -------------
-- 窗口
keymap.set("n", "<leader>|", "<C-w>v")
keymap.set("n", "<leader>-", "<C-w>s")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 保存并退出
keymap.set("n", "Q", ":wqa<CR>")
keymap.set("n", "<leader>q", ":wq<CR>")
keymap.set("n", "<leader>s", ":w<CR>")
keymap.set("n", "<leader>S", ":wa<CR>")

-- 显示终端背景图片，或者设置终端真颜色
keymap.set("n", "<leader>bk", ":set notermguicolors<CR>")
keymap.set("n", "<leader>nbk", ":set termguicolors<CR>")

-- 加载neovim配置文件
keymap.set("n", "<leader>r", ":so<CR>")

-- ------------- 插件 -------------
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- 切换buffer
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")

