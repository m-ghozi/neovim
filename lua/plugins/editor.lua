return {
  -- Markdown Viewer
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = true,
    ft = "markdown",
    config = function()
      require("render-markdown").setup({
        file_types = { "markdown" },
        code = {
          sign = false,
          width = "block",
          right_pad = 4,
          position = "right",
        },
        heading = {
          sign = false,
          -- icons = {},
        },
      })
    end,
  },

  -- Fzf-lua
  {
    "ibhagwan/fzf-lua",
    opts = {
      files = { formatter = "path.filename_first" },
      oldfiles = {
        include_current_session = true,
        formatter = "path.filename_first",
      },
      previewers = {
        builtin = {
          render_markdown = {
            enabled = true,
            filetypes = { ["markdown"] = true },
          },
        },
      },
    },
  },
}
