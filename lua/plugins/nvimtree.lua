local M = {
	"kyazdani42/nvim-tree.lua",
	dependencies = {
		"kyazdani42/nvim-web-devicons",
	},
	event = "VeryLazy",
	opts = {
		disable_netrw = true,
		sort_by = "modification_time",
		hijack_unnamed_buffer_when_opening = true,
		hijack_directories = {
			enable = true,
			auto_open = true,
		},
		hijack_cursor = true,
		update_cwd = true,
		view = {
			side = "right",
		},
		diagnostics = {
			enable = false,
			show_on_dirs = false,
		},
		trash = {
			cmd = "trash",
			require_confirm = false,
		},
		actions = {
			change_dir = {
				enable = false,
			},
			open_file = {
				quit_on_open = true,
				window_picker = { enable = false },
			},
		},
	},
}

return M
