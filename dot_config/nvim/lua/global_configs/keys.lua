--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local telescope_map = vim.keymap.set
local builtin = require('telescope.builtin')

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
	pattern = '*',
})

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
-- General nvim key-map
map('n', '<C-/>', [[:noh<CR>]], {})                               -- press "Ctrl" + "/" to turn off last search hightlight

-- Toggle nvim-tree
-- map('n', '`', [[:NvimTreeFocus<CR>]], {})                         -- press "\" + "`" in normal mode to open/focus file explorer 
map('n', '<F2>', [[:NvimTreeFindFileToggle!<CR>]], {})            -- press "F2" to toggle file explorer

-- Switch between buffer
map('n', '<C-Left>', [[:bprevious<CR>]], {})                      -- press "Ctrl" + "<-" to move to previous buffer
map('n', '<C-Right>', [[:bnext<CR>]], {})                         -- press "Ctrl" + "->" to move to next buffer

-- Close/Re-open buffer
map('n', '<C-d>', [[:bd<CR>]], {})                                -- press "Ctrl" + "d" close buffer
                                                                  -- press "Ctrl" + "o" re-open buffer 

-- Telescope
telescope_map('n', '<leader>t', [[:Telescope<CR>]], {})           -- press "\" + "t" to open Telescope and Lists available commands
telescope_map('n', '<leader>f', builtin.find_files, {})           -- find file
telescope_map('n', '<leader>g', builtin.live_grep, {})            -- find anything
telescope_map('n', '<leader>`', builtin.buffers, {})               -- Press "\" + "`" to show buffers (= to file_explorer)

map("n","`",":Telescope file_browser<CR>",{ noremap = true })
