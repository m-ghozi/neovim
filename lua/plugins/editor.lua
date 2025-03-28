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
          local mini_files = require("mini.files")
          if vim.b.minifiles_win then
            mini_files.close()
            vim.b.minifiles_win = nil
          else
            mini_files.open(vim.api.nvim_buf_get_name(0), true)
            vim.b.minifiles_win = true
          end
        end,
        desc = "Toggle mini.files",
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

  -- which-key
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>e", icon = { icon = " ", color = "cyan" } },
        { "<leader>E", icon = { icon = " ", color = "cyan" } },
        { "<leader>K", icon = { icon = "󰘥 ", color = "cyan" } },
      },
    },
  },
}
