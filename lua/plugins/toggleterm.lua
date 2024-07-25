require("toggleterm").setup({
	size = 10,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	autochdir = false,
	shade_terminals = true,
	shading_factor = 30,
	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	persist_size = true,
	persist_mode = true,
	-- 'vertical'、'horizontal'、'tab' or 'float'
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	auto_scroll = true,

	float_opts = {
		border = "single",
		width = 80,
		height = 30,
		winblend = 30,
		title_pos = "left",
		winbar = {
			enabled = true,
			name_formatter = function(term)
				return term.name
			end,
		},
	},
})
