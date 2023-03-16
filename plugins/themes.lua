return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
  },
  {
    "ray-x/starry.nvim",
    lazy = false,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        barbar = false,
        beacon = false,
        cmp = true,
        dashboard = true,
        fern = false,
        fidget = false,
        gitsigns = true,
        hop = true,
        lightspeed = true,
        lsp_trouble = true,
        markdown = true,
        mason = true,
        neogit = true,
        neotree = true,
        notify = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        ts_rainbow = true,
        ts_rainbow2 = true,
        which_key = true,
        dap = {
          enabled = true,
          enable_ui = true,
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        navic = {
          enabled = true,
          custom_bg = "NONE",
        },
      },
    },
  },
}
