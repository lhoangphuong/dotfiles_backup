local actions = require"telescope.actions"

require"telescope".setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<F2>"] = actions.close,
        ["`"] = actions.close,
      },
    },
  },
  extensions = {
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
    },
  },
})

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
