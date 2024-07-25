-- 配置快捷键的选项
local opts = { buffer = bufnr, noremap = true, silent = true }

vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- 跳转到函数/变量的声明
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- 跳转到函数/变量的定义
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- 显示光标处的悬浮提示
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts) -- 显示函数/方法的签名帮助

vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts) -- 跳转到类型定义
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts) -- 重命名函数/变量
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- 查看函数/变量的引用

-- 配置诊断符号
local signs = { Error = "●", Warn = "●", Hint = "●", Info = "●" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- 配置诊断显示
vim.diagnostic.config({
	virtual_text = false, -- 禁用虚拟文本显示
	signs = true, -- 启用诊断符号
	underline = true, -- 启用下划线显示
	update_in_insert = false,
	severity_sort = true,
	float = {
		source = "always", -- 总是显示源
	},
})
