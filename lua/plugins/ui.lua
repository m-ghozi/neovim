return {
  {
    "folke/noice.nvim",
    opts = {
      lsp = { hover = { silent = true } },
      presets = { lsp_doc_border = true },
    },
  },
  {
    "b0o/incline.nvim",
    config = function()
      require("incline").setup()
    end,
    -- Optional: Lazy load Incline
    event = "VeryLazy",
  },
}
