---@diagnostic disable: undefined-global

local M = {
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			vim.lsp.enable({ "lua_ls", "nixd", "pyright", "clangd", "superhtml" })
		end,
	},
}

return M
