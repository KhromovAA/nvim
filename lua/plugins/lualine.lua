local M = {
	"nvim-lualine/lualine.nvim",
	event = "BufReadPre",
	opts = {
		options = {
			disabled_filetypes = { "NvimTree" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {},
			lualine_x = { "filesize", "filetype" },
			lualine_y = { "filename" },
			lualine_z = { "location" },
		},
	},
}

return M
