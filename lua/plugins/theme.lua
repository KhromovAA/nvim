---@diagnostic disable: undefined-global

local M = {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	opts = function()
        local background = "#none"
        if vim.g.neovide then
            background = "#0f0f0f"
        end
		return {
			style = "warm",
			highlights = {
				Normal = { bg = background },
				Terminal = { bg = background },
                NvimTreeNormal = { bg = background },
				EndOfBuffer = { bg = background },
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
        if vim.g.neovide then
            vim.g.neovide_transparency = 0.6
            vim.g.neovide_scale_factor = 1.75
        end
		onedark.setup(opts)
		onedark.load()
		vim.api.nvim_set_hl(0, "SignColumn", { link = "Normal" })
	end,
}

return M
