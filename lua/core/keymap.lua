vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<C-t>', ':ter<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- 在 Neovim 中设置快捷键以跳转标签页
-- 设置快捷键 Ctrl+b 跳转到下一个标签页
vim.api.nvim_set_keymap('n', '<C-b>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
-- 设置快捷键 Ctrl+w x 关闭当前标签页
vim.api.nvim_set_keymap('n', '<C-x>', ':BufferLinePickClose<CR>', { noremap = true, silent = true })

-- 在终端模式中使用 'jk' 退出终端模式
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })



