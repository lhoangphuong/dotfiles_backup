--[[ settings.lua ]]
local o = vim.o
local wo = vim.wo
local bo = vim.bo


--[[ global options ]]
o.background = 'dark'           -- string (default "dark"): "dark" or "light", used for highlight colors
o.number = true                 -- boolean (default off): print the line number in front of each line 
o.autoindent = true             -- boolean (default on): take indent for new line from previous line
o.expandtab = true              -- boolean (default off): use spaces when <Tab> is inserted
o.smarttab = true               -- boolean (default on): use 'shiftwidth' when inserting <Tab>
o.shiftwidth = 2                -- number (default 8): number of spaces to use for (auto)indent step
o.tabstop = 2                   -- number (default 8): number of spaces that <Tab> in file uses
o.softtabstop = 2               -- number (default 0): number of spaces that <Tab> uses while editing
o.clipboard = 'unnamedplus'     -- string (default ""): use the clipboard as the unnamed register. "unnamedplus" make vim use the same clipboard as the system
o.termguicolors = true

--[[ window-local options ]]


--[[ buffer-local options ]]
