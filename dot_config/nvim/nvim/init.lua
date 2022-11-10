--[[ init.lua ]]
require('settings')             -- lua/settings.lua
require('keys')                 -- lua/keys.lua


-- Custom
require('plugins_config.packer')
require('plugins_config.nvim_tree')
require('plugins_config.lualine')
require('plugins_config.bufferline')
vim.cmd('colorscheme vscode')   -- Choose theme
