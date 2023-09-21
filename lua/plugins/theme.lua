---@diagnostic disable: undefined-global

local M = {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	opts = function()
		return {
			style = "warm",
			highlights = {
				Normal = { bg = "#1d1f21" },
				Terminal = { bg = "#1d1f21" },
				EndOfBuffer = { bg = "#1d1f21" },
				TSAttribute = { fg = "#68aee8" },
				TSField = { fg = "#e16d77" },
				TSFunction = { fg = "#68aee8" },
				TSMethod = { fg = "#68aee8", fmt = "italic" },
				TSFuncBuiltin = { fg = "#68aee8" },
				TSConstant = { fg = "#56b6c2" },
				pythonTSConstructor = { fg = "#68aee8", fmt = "bold" },
			},
		}
	end,
	config = function(_, opts)
		local onedark = require("onedark")
		onedark.setup(opts)
		onedark.load()
		vim.api.nvim_set_hl(0, "SignColumn", { link = "Normal" })
	end,
}

return M
