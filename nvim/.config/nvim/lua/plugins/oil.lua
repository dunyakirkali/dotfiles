return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Oil",
    config = function()
      require("oil").setup()
    end,
    keys = {
      {
        "-",
        "<cmd>Oil<cr>",
        { desc = "Open parent directory" },
      },
    },
    opts = {
      columns = {
        "icon",
        { "mtime", highlight = "Comment", format = "%T %y-%m-%d" },
      },
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 3,
        win_options = {
          winblend = 0,
        },
      },
    },
  },
}
