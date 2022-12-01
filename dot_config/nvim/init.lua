-- [ ~/.config/nvim/lua/bootstrap ]
require 'bootstrap.install_packer'
require 'bootstrap.install_plugin'


-- [ ~/.config/nvim/lua/plugin_configs ]
require 'plugin_configs.theme'
require 'plugin_configs.file_explorer'
require 'plugin_configs.tabline'
require 'plugin_configs.statusline'
require 'plugin_configs.fuzzy_finder'
require 'plugin_configs.lsp'
require 'plugin_configs.terminal'
-- require 'plugin_configs.code_completion'


-- [ ~/.config/nvim/lua/global_configs ]
require 'global_configs.settings'
require 'global_configs.keys'
