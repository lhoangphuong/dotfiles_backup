--[[ init.lua ]]
require('plugins_config.packer') -- Plugin manager need to be loaded first
require('plugins_config.telescope') -- Plugin with many dependency load second :v
require('plugins_config.nvim_tree')
require('plugins_config.lualine')
require('plugins_config.bufferline')


-- Sytem wide config
require('settings')  
require('keys')      
vim.cmd('colorscheme vscode')   -- Choose theme