local M = {}

local function motion(mode, key, back_key)
	if vim.v.count1 > 1 then
		vim.cmd("normal! " .. vim.v.count1 .. key)
		return
	end

	if mode == "v" then
		vim.cmd([[normal! gv]])
	end

	local initial_line = vim.fn.line(".")
	vim.cmd("normal! " .. key)
	local new_line = vim.fn.line(".")

	if initial_line ~= new_line then
		vim.cmd("normal! " .. back_key)
	end
end

function M.set_keymap(mode, key, back_key)
	vim.keymap.set(mode, key, function()
		motion(mode, key, back_key)
	end, { noremap = true, expr = false, silent = false })
end

return M
