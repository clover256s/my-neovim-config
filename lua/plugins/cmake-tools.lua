local osys = require("cmake-tools.osys")
require("cmake-tools").setup({
	cmake_command = "cmake", -- 这用于指定 cmake 命令的路径
	ctest_command = "ctest", -- 这用于指定 ctest 命令的路径
	cmake_use_preset = true, -- 是否使用预设的 CMake 配置
	cmake_regenerate_on_save = true, -- 保存 CMakeLists.txt 文件时是否自动重新生成
	cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- 传递给 `CMakeGenerate` 的选项
	cmake_build_options = {}, -- 传递给 `CMakeBuild` 的选项
	cmake_build_directory = function()
		if osys.iswin32 then
			return "out\\${variant:buildType}"
		end
		return "out/${variant:buildType}"
	end, -- 用于指定 CMake 生成目录，允许宏扩展，可以是字符串或返回字符串的函数，相对于工作目录。
	cmake_soft_link_compile_commands = true, -- 是否自动将编译命令文件软链接到项目根目录
	cmake_compile_commands_from_lsp = false, -- 是否自动设置编译命令文件位置，使用 LSP 时设置为 false
	cmake_kits_path = nil, -- 用于指定全局 CMake kits 路径，参见 CMakeKits 详细用法
	cmake_variants_message = {
		short = { show = true }, -- 是否显示简短的消息
		long = { show = true, max_length = 40 }, -- 是否显示详细的消息，最大长度为 40
	},
	cmake_dap_configuration = { -- CMake 的调试设置
		name = "cpp",
		type = "codelldb",
		request = "launch",
		stopOnEntry = false,
		runInTerminal = true,
		console = "integratedTerminal",
	},
	cmake_executor = { -- 执行器设置
		name = "toggleterm", -- 设置为 toggleterm 执行器
		opts = {}, -- 执行器的选项
	},
	cmake_runner = { -- 运行器设置
		name = "toggleterm", -- 设置为 toggleterm 运行器
		opts = {}, -- 运行器的选项
	},
	cmake_notifications = {
		runner = { enabled = true }, -- 运行器通知启用
		executor = { enabled = true }, -- 执行器通知启用
	},
})
