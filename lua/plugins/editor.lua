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

  -- Mini files
  {
    "echasnovski/mini.files",
    keys = {
      {
        "<leader>e",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (directory of current file)",
      },
      {
        "<leader>E",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
      {
        "<leader>fm",
        function()
          require("mini.files").open(LazyVim.root(), true)
        end,
        desc = "Open mini.files (root)",
      },
    },
    opts = {
      mappings = {
        go_in = "<Right>",
        go_out = "<Left>",
      },
      windows = {
        width_nofocus = 20,
        width_focus = 30,
        width_preview = 60,
      },
      options = {
        use_as_default_explorer = true,
      },
    },
  },
}
