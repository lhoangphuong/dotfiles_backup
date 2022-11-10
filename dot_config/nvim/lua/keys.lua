--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

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
map('n', '`', [[:NvimTreeToggle<CR>]], {})          -- press "`" in normal mode to open file explorer 