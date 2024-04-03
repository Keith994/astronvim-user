local create_command = vim.api.nvim_create_user_command
return {
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    opts = {},
  },
  {
    "olexsmir/gopher.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
    ft = "go",
    opts = {},
  },
  {
    "ray-x/go.nvim",
    ft = "go",
    dependencies = {
      { "ray-x/guihua.lua" },
      {
        "edolphin-ydf/goimpl.nvim",
        dependencies = {
          { "nvim-lua/plenary.nvim" },
          { "nvim-lua/popup.nvim" },
          { "nvim-telescope/telescope.nvim" },
          { "nvim-treesitter/nvim-treesitter" },
        },
        config = function() require("telescope").load_extension "goimpl" end,
      },
    },
    opts = function()
      local opts = {
        -- verbose = true,
        log_path = vim.fn.expand "$HOME" .. "/tmp/gonvim.log",
        lsp_codelens = true,
        comment_placeholder = "Keith",
        dap_debug = true,
        dap_debug_gui = false,
        dap_debug_vt = false,
        dap_debug_keymap = false, -- true: use keymap for debugger defined in go/dap.lua
        run_in_floaterm = true, -- set to true to run in float window.
        icons = false,
        sign_priority = 500,
        lsp_inlay_hints = {
          enable = false,
          -- Only show inlay hints for the current line
          only_current_line = false,
          -- Event which triggers a refersh of the inlay hints.
          -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
          -- not that this may cause higher CPU usage.
          -- This option is only respected when only_current_line and
          -- autoSetHints both are true.
          only_current_line_autocmd = "CursorHold",
          -- whether to show variable name before type hints with the inlay hints or not
          -- default: false
          show_variable_name = true,
          -- prefix for parameter hints
          parameter_hints_prefix = " ",
          show_parameter_hints = true,
          -- prefix for all the other hints (type, chaining)
          other_hints_prefix = "=> ",
          -- whether to align to the lenght of the longest line in the file
          max_len_align = false,
          -- padding from the left if max_len_align is true
          max_len_align_padding = 1,
          -- whether to align to the extreme right or not
          right_align = false,
          -- padding from the right if right_align is true
          right_align_padding = 6,
          -- The color of the hints
          highlight = "Comment",
        },
      }

      create_command(
        "GoImpl",
        function() require("telescope").extensions.goimpl.goimpl {} end,
        { desc = "Telescope go impl" }
      )
      return opts
    end,
  },
}
