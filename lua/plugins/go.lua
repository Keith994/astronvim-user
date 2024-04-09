if vim.g.vscode then return {} end
local create_command = vim.api.nvim_create_user_command
return {
  {
    "AstroNvim/astrolsp",
    optional = true,
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable-next-line: missing-fields
      config = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                ST1003 = false,
                fieldalignment = false,
                fillreturns = true,
                nilness = true,
                nonewvars = true,
                shadow = true,
                undeclaredname = true,
                unreachable = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              codelenses = {
                gc_details = true, -- Show a code lens toggling the display of gc's choices.
                generate = true, -- show the `go generate` lens.
                regenerate_cgo = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              buildFlags = { "-tags", "integration" },
              completeUnimported = true,
              diagnosticsDelay = "500ms",
              matcher = "Fuzzy",
              semanticTokens = true,
              staticcheck = true,
              symbolMatcher = "fuzzy",
              usePlaceholders = true,
            },
          },
        },
      },
    },
  },
  -- Golang support
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed =
          require("astrocore").list_insert_unique(opts.ensure_installed, { "go", "gomod", "gosum", "gowork" })
      end
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(
        opts.ensure_installed,
        { "gomodifytags", "gofumpt", "iferr", "impl", "goimports" }
      )
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "gopls" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(
        opts.ensure_installed,
        { "delve", "gopls", "gomodifytags", "gofumpt", "iferr", "impl", "goimports" }
      )
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
      {
        "jay-babu/mason-nvim-dap.nvim",
        optional = true,
        opts = function(_, opts)
          opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "delve" })
        end,
      },
    },
    opts = {},
  },
  {
    "ray-x/go.nvim",
    ft = { "go", "gomod" },
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
        dap_debug_vt = true,
        dap_debug_keymap = false, -- true: use keymap for debugger defined in go/dap.lua
        run_in_floaterm = true, -- set to true to run in float window.
        icons = false,
        sign_priority = 500,
        lsp_inlay_hints = {
          enable = true,
          -- Only show inlay hints for the current line
          only_current_line = true,
          -- Event which triggers a refersh of the inlay hints.
          -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
          -- not that this may cause higher CPU usage.
          -- This option is only respected when only_current_line and
          -- autoSetHints both are true.
          -- only_current_line_autocmd = "CursorHold",
          only_current_line_autocmd = "CursorHold",
          autoSetHints = true,
          -- whether to show variable name before type hints with the inlay hints or not
          -- default: false
          show_variable_name = true,
          -- prefix for parameter hints
          parameter_hints_prefix = "󰊕 ",
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
