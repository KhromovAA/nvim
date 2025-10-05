local M = {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			local clang_format_file = os.getenv("HOME") .. "/.config/nvim/.clang-format"
			null_ls.setup({
				sources = {
					-- Lua
					null_ls.builtins.formatting.stylua,
					-- Python
					null_ls.builtins.formatting.yapf,
					-- C/C++
					null_ls.builtins.formatting.clang_format.with({
						extra_args = { "--style=file:" .. clang_format_file },
					}),
					-- Nix
					null_ls.builtins.formatting.nixpkgs_fmt,
                    -- HTML, CSS, js
                    null_ls.builtins.formatting.prettierd,
				},
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
	},
}

return M
