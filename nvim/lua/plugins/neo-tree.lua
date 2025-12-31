return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-neotest/nvim-nio",
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_by_name = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
      },
    },
  },
}
