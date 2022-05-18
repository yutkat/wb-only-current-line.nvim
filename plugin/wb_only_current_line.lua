if vim.g.loaded_wb_only_current_line ~= nil then
  return
end
vim.g.loaded_wb_only_current_line = 1

wb = require("wb-only-current-line")
wb.set_keymap("n", "w", "k$")
wb.set_keymap("v", "w", "k$")
wb.set_keymap("n", "W", "k$")
wb.set_keymap("v", "W", "k$")
wb.set_keymap("n", "b", "j^")
wb.set_keymap("v", "b", "j^")
wb.set_keymap("n", "B", "j^")
wb.set_keymap("v", "B", "j^")
