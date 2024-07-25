require("nvim-treesitter.configs").setup({
	-- 解析器名称的列表，或 "all"（列出的解析器必须始终安装）
	ensure_installed = "all",

	-- 同步安装解析器（仅适用于 `ensure_installed`）
	sync_install = false,

	-- 进入缓冲区时自动安装缺少的解析器
	-- 推荐：如果您本地没有安装 `tree-sitter` CLI，则设置为 false
	auto_install = true,

	-- 要忽略安装的解析器列表（或 "all"）
	ignore_install = {},

	---- 如果您需要更改解析器的安装目录（请参阅 -> 高级设置）
	-- parser_install_dir = "/some/path/to/store/parsers", -- 记得运行 vim.opt.runtimepath:append("/some/path/to/store/parsers")！
	highlight = {
		enable = true,

		-- 注意：这些是解析器的名称，而不是文件类型。（例如，如果你想要
		-- 禁用 `tex` 文件类型的高亮，则需要在此列表中包括 `latex`，因为这是
		-- 解析器的名称）
		-- 将被禁用的语言列表
		disable = {},
		-- 或使用函数进行更多灵活性，例如禁用大型文件的慢树状高亮
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,

		-- 将此设置为 true 将同时运行 `:h syntax` 和 tree-sitter。
		-- 如果你依赖于 'syntax' 被启用（如缩进），请将此设置为 `true`。
		-- 使用此选项可能会减慢编辑器速度，并且可能会看到一些重复的高亮。
		-- 除了 true，它还可以是语言的列表
		additional_vim_regex_highlighting = false,
	},
})
