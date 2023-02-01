local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
  view = {
    mappings = {
      custom_only = false,
        list = {
          { key = "l", action = "edit", action_cb = edit_or_open },
          { key = "L", action = "vsplit_preview", action_cb = vsplit_preview },
          { key = "h", action = "close_node" },
          { key = "H", action = "collapse_all", action_cb = collapse_all }
        }
    },
  },
  -- change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
        enable = false,
      },
    },
  },
})

