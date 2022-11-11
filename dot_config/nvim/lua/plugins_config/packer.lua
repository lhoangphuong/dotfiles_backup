local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins installation here

    -- Themes
    use({ 
      'Mofiqul/vscode.nvim', as = 'vscode', 
      config = function() end 
    })
    use({ 
      'rose-pine/neovim', as = 'rose-pine', 
      config = function() end 
    })

    -- File explorer
    use { 
      'nvim-tree/nvim-tree.lua', 
      requires = { 'nvim-tree/nvim-web-devicons' }
    }

    -- Status line
    use { 
      'nvim-lualine/lualine.nvim', 
      requires = { 'kyazdani42/nvim-web-devicons', opt = true 
    }}

    -- Tab line
    use { 
      'akinsho/bufferline.nvim', tag = "v3.*", 
      requires = 'nvim-tree/nvim-web-devicons' 
    }

    -- Dashboard
    use {'glepnir/dashboard-nvim'}

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)