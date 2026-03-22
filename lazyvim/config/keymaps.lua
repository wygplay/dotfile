-- 键位映射
local map = vim.keymap.set

-- 保存文件
map("n", "<C-s>", ":w<cr>", { desc = "Save file" })

-- 插入模式下移动光标
map("i", "<C-h>", "<left>", { desc = "Move left" })
map("i", "<C-j>", "<down>", { desc = "Move down" })
map("i", "<C-k>", "<up>", { desc = "Move up" })
map("i", "<C-l>", "<right>", { desc = "Move right" })

-- 浮动终端
map({"n", "t"}, "<M-t>", function() require("lazyvim.util").terminal() end, { desc = "Toggle terminal" })