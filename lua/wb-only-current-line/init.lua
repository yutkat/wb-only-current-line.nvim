local M = {}

local function clamp_motion(key, fallback)
	local pos = vim.api.nvim_win_get_cursor(0)
	local line = pos[1]

	vim.cmd("normal! " .. key)

	if vim.api.nvim_win_get_cursor(0)[1] ~= line then
		vim.api.nvim_win_set_cursor(0, pos)
		vim.cmd("normal! " .. fallback)
	end
end

local function motion(key, fallback)
	for _ = 1, vim.v.count1 do
		local pos = vim.api.nvim_win_get_cursor(0)
		clamp_motion(key, fallback)
		local new_pos = vim.api.nvim_win_get_cursor(0)
		if pos[1] == new_pos[1] and pos[2] == new_pos[2] then
			break
		end
	end
end

function M.set_keymap(mode, key, fallback)
	vim.keymap.set(mode, key, function()
		motion(key, fallback)
	end, { noremap = true, silent = false })
end

return M
