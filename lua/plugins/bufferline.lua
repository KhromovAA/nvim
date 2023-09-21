local M = {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	opts = {
		options = {
			numbers = "none",
			close_command = "Bdelete! %d",
			right_mouse_command = "Bdelete! %d",
			left_mouse_command = "buffer %d",
			middle_mouse_command = nil,
			indicator = { style = "icon", icon = "▎" },
			buffer_close_icon = "",
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",
			max_name_length = 30,
			max_prefix_length = 30,
			tab_size = 18,
			diagnostics = false,
			diagnostics_update_in_insert = false,
			offsets = { { filetype = "NvimTree", text = "", padding = 0 } },
			show_buffer_icons = true,
			show_buffer_close_icons = false,
			show_close_icon = false,
			show_tab_indicators = true,
			persist_buffer_sort = true,
			separator_style = "slant",
			enforce_regular_tabs = true,
			always_show_bufferline = true,
		},

		highlights = {
			fill = {
				fg = { attribute = "fg", highlight = "MiniTablineModifiedVisible" },
				bg = { attribute = "bg", highlight = "MiniTablineModifiedVisible" },
			},

			background = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "ColorColumn" },
			},

			buffer_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			close_button = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "ColorColumn" },
			},
			close_button_visible = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			tab_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			tab = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			tab_close = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},

			duplicate_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
				italic = true,
			},
			duplicate_visible = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
				italic = true,
			},
			duplicate = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
				italic = true,
			},

			modified = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "ColorColumn" },
			},
			modified_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			modified_visible = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			separator = {
				fg = { attribute = "bg", highlight = "MiniTablineModifiedVisible" },
				bg = { attribute = "bg", highlight = "ColorColumn" },
			},
			separator_selected = {
				fg = { attribute = "bg", highlight = "MiniTablineModifiedVisible" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			separator_visible = {
				fg = { attribute = "bg", highlight = "MiniTablineModifiedVisible" },
				bg = { attribute = "bg", highlight = "ColorColumn" },
			},
			indicator_selected = {
				fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
				bg = { attribute = "bg", highlight = "TabLineSel" },
			},
		},
	},
}

return M
