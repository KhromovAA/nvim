---@diagnostic disable: undefined-global

local M = {
	{
		"Bekaboo/deadcolumn.nvim",
		event = "BufReadPre",
	},
	{
		"farmergreg/vim-lastplace",
		lazy = false,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = true,
	},
	{
		"machakann/vim-sandwich",
		event = "BufreadPre",
	},
}

return M
