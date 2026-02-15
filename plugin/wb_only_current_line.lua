if vim.g.loaded_wb_only_current_line ~= nil then
	return
end
vim.g.loaded_wb_only_current_line = 1

local wb = require("wb-only-current-line")
wb.set_keymap("n", "w", "$")
wb.set_keymap("v", "w", "$")
wb.set_keymap("n", "W", "$")
wb.set_keymap("v", "W", "$")
wb.set_keymap("n", "b", "^")
wb.set_keymap("v", "b", "^")
wb.set_keymap("n", "B", "^")
wb.set_keymap("v", "B", "^")
