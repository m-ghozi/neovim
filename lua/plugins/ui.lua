return {
  -- messages, cmdline and the popupmenu
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        style_preset = require("bufferline").style_preset.minimal,
      },
    },
  },

  -- dashboard
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
         _________/\     __               
        /   _____/  |__ |__|______  ____  
        \_____  \|  |  \|  |_  __ \/ __ \ 
        /        \      \  ||  | \/  \_\ )
       /_______  /___|  /__||__|   \____/ 
               \/     \/                  
      ]],
        },
      },
    },
  },
}
