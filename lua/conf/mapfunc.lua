---@diagnostic disable: undefined-global

return function(args)
	local lhs = args[1]
	local rhs = args[2]
	local opts = {
		mode = "n",
		silent = true,
		noremap = true,
	}
	for k, v in pairs(args) do
		if type(k) ~= "number" then
			opts[k] = v
		end
	end
	local mode = opts.mode
	opts.mode = nil
	if type(rhs) == "function" then
		opts["callback"] = rhs
		rhs = "<Nop>"
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end
