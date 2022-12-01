--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local telescope_map = vim.keymap.set
local builtin = require('telescope.builtin')

--[[
Example:
https://neovim.io/doc/user/api.html#nvim_set_keymap()
nvim_set_keymap({mode}, {lhs}, {rhs}, {*opts})

Parameters:
- {mode} Mode short-name (map command prefix: "n", "i", "v", "x", …) or "!" for :map!, or empty string for :map.
- {lhs} Left-hand-side {lhs} of the mapping.
- {rhs} Right-hand-side {rhs} of the mapping.
- {opts} Optional parameters map: keys are :map-arguments, values are booleans (default false).

]]--

-- Toggle nvim-tree
map('n', '`', [[:NvimTreeFocus<CR>]], {})                         -- press "\" + "`" in normal mode to open/focus file explorer 
map('n', '<leader>`', [[:NvimTreeFindFileToggle!<CR>]], {})       -- press "`" to toggle file explorer

-- Toggle terminal
map('n', '<leader>t', [[:ToggleTerm<CR>]], {})

-- Switch between buffer
map('n', '<leader>1', [[:bprevious<CR>]], {})                     -- press "\" + "1" to move to previous buffer
map('n', '<leader>2', [[:bnext<CR>]], {})                         -- press "\" + "2" to move to next buffer

telescope_map('n', '<leader>f', builtin.find_files, {})           -- leader is map to "\" by default
telescope_map('n', '<leader>g', builtin.live_grep, {})
