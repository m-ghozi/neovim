return {
  -- Terminal
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      terminal = {
        win = {
          width = 0.8,
          height = 0.7,
          border = "rounded",
          position = "float",
        },
      },
    },
  },
}
