---@diagnostic disable: undefined-global

local map = require("conf.mapfunc")

--toggle autosave
map({ "<leader>as", "<Cmd>ASToggle<CR>" })

--lsp
map({ "<F2>", vim.lsp.buf.rename })
map({ "<F7>", vim.lsp.buf.hover })

--format
map({ "<leader>f", vim.lsp.buf.format })

--snippets
for _, mode in ipairs({ "s", "i" }) do
	map({
		mode = mode,
		"<CR>",
		"vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<CR>'",
		expr = true,
	})
	map({
		mode = mode,
		"<Tab>",
		"vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'",
		expr = true,
	})
	map({
		mode = mode,
		"<S-Tab>",
		"vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'",
		expr = true,
	})
end

--buffers
map({ "<Tab>c", "<Cmd>bdelete<CR>" })
map({ "<Tab>C", "<Cmd>bdelete!<CR>" })

--utils
map({ mode = "i", "jj", "<Esc>" })
map({ mode = "t", "jj", "<C-\\><C-n>" })
map({ mode = "i", "jk", "<Esc>" })
map({ mode = "t", "jk", "<C-\\><C-n>" })

for _, mode in ipairs({ "", "i" }) do
	map({ mode = mode, "<up>", '<Cmd>echoe "Use k"<CR>', silent = false })
	map({ mode = mode, "<down>", '<Cmd>echoe "Use j"<CR>', silent = false })
	map({ mode = mode, "<left>", '<Cmd>echoe "Use h"<CR>', silent = false })
	map({ mode = mode, "<right>", '<Cmd>echoe "Use l"<CR>', silent = false })
end

--git
map({ "<leader>[", "<Cmd>Gitsigns prev_hunk<CR>" })
map({ "<leader>]", "<Cmd>Gitsigns next_hunk<CR>" })
map({ "<leader>ga", "<Cmd>Gitsigns stage_hunk<CR>" })
map({ "<leader>gA", "<Cmd>Gitsigns stage_buffer<CR>" })
map({ "<leader>gu", "<Cmd>Gitsigns undo_stage_hunk<CR>" })
map({ "<leader>gU", "<Cmd>Gitsigns reset_buffer_index<CR>" })
map({ "<leader>gc", "<Cmd>Git commit | only<CR>" })
map({ "<leader>gC", "<Cmd>Git commit --amend | only<CR>" })
map({ "<leader>gp", "<Cmd>Git push<CR>" })
map({ "<leader>gP", "<Cmd>Git push --force<CR>" })
map({ "<leader>l", "<Cmd>LazyGit<CR>" })

--bufferline
map({ "<S-l>", ":BufferLineCycleNext<CR>" })
map({ "<S-h>", ":BufferLineCyclePrev<CR>" })
map({ "<Tab>", ":BufferLineCycleNext<CR>" })
map({ "<S-Tab>", ":BufferLineCyclePrev<CR>" })
map({ "<Tab><Tab>", ":BufferLinePick<CR>" })
map({ "<Tab>j", ":BufferLineMovePrev<CR>" })
map({ "<Tab>k", ":BufferLineMoveNext<CR>" })
map({ "<Tab>c", ":bdelete<CR>" })
map({ "<Tab>C", ":bdelete!<CR>" })
map({ "<Tab><Tab>c", ":BufferLinePickClose<CR>" })
map({ "<S-Tab>j", ":BufferLineCloseLeft<CR>" })
map({ "<S-Tab>k", ":BufferLineCloseRight<CR>" })

-- nvimtree
map({ "<leader>t", "<Cmd>NvimTreeRefresh<CR><Cmd>NvimTreeFindFileToggle<CR>" })
map({ "<leader>tt", "<Cmd>NvimTreeRefresh<CR><Cmd>NvimTreeFocus<CR>" })
