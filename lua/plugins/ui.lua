return {
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = {
      options = {
        separator_style = "thick",
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = { hover = { silent = true } },
      presets = { lsp_doc_border = true },
    },
  },
}
