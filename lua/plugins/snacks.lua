return {
  -- Terminal
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      animate = {
        enabled = true,
        duration = 20, -- ms per step
        easing = "linear",
        fps = 60, -- frames per second. Global setting for all animations
      },

      bigfile = { enabled = false },

      terminal = {
        win = {
          width = 0.8,
          height = 0.8,
          border = "rounded",
          position = "float",
        },
      },

      indent = {
        enabled = true,
        only_scope = true,
        only_current = true,
        indent = {
          hl = {
            "SnacksIndent1",
            "SnacksIndent2",
            "SnacksIndent3",
            "SnacksIndent4",
            "SnacksIndent5",
            "SnacksIndent6",
            "SnacksIndent7",
            "SnacksIndent8",
          },
        },
        scope = {
          enabled = false,
          underline = true,
        },
      },

      dashboard = {
        enabled = true,
        sections = {
          { section = "header", padding = 0.1 },
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
