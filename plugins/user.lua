return {
  {
    "antoinemadec/FixCursorHold.nvim",
    event = { "BufReadPost" },
    init = function() vim.g.cursorhold_updatetime = 100 end,
  },
  { "lambdalisue/suda.vim", cmd = { "SudaWrite", "SudaRead" } },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "ray-x/lsp_signature.nvim",
        opts = {
          bind = true,
          toggle_key = "<C-k>",
          floating_window = true,
          floating_window_above_cur_line = true,
          hint_enable = false,
          fix_pos = false,
          debug = false,
          verbose = false,
          zindex = 200,
          timer_interval = 200,
          extra_trigger_chars = {},
          handler_opts = {
            border = "rounded", -- "shadow", --{"╭", "─" ,"╮", "│", "╯", "─", "╰", "│" },
          },
          max_height = 8,
          select_signature_key = "<C-n>",
          move_cursor_key = "<C-j>",
        },
      },
      {
        "VidocqH/lsp-lens.nvim",
        event = "CursorMovedI",
        opts = {
          enable = true,
          include_declaration = false, -- Reference include declaration
          sections = {
            -- Enable / Disable specific request
            definition = false,
            references = true,
            implementation = true,
          },
          ignore_filetype = {
            "prisma",
          },
        },
      },
    },
  },
  {
    "andymass/vim-matchup",
    event = "BufReadPost",
    init = function()
      vim.g.matchup_enabled = 1
      vim.g.matchup_surround_enabled = 1
      vim.g.matchup_matchparen_deferred = 1
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "nvim-orgmode/orgmode",
    ft = "org",
    opts = {
      org_agenda_files = { "~/orgs/*" },
      org_default_notes_file = "~/orgs/refile.org",
    },
  },
  -- DiffviewOpen HEAD~2 --cached ;; DiffviewFileHistory %
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
      "DiffviewFileHistory",
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  {
    "plasticboy/vim-markdown",
    dependencies = {
      { "godlygeek/tabular" },
      {
        "iamcco/markdown-preview.nvim",
        build = ":cd app && yarn install",
        ft = "markdown",
        init = function()
          vim.g.mkdp_browser = "/usr/bin/microsoft-edge-stable"
        end,
        cmd = { "MarkdownPreview" },
      },
    },
    ft = { "markdown", "md" },
    init = function()
      local g = vim.g
      g.vim_markdown_folding_disabled = 1
      g.vim_markdown_no_default_key_mappings = 1
      g.vim_markdown_toc_autofit = 1
    end,
  },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    cmd = { "HopWord", "HopChar1" },
    config = function() require("hop").setup {} end,
  },
  {
    "folke/neodev.nvim",
    dependencies = { { "nanotee/luv-vimdocs" } },
  },
  {
    "nanotee/sqls.nvim",
    ft = "sql",
  },
  {
    "onsails/lspkind.nvim",
    opts = {
      mode = "symbol",
      symbol_map = {
        Array = "",
        Boolean = "⊨",
        Class = "",
        Constructor = "",
        Key = "",
        Namespace = "",
        Null = "NULL",
        Number = "#",
        Object = "",
        Package = "",
        Property = "",
        Reference = "",
        Snippet = "",
        String = "",
        TypeParameter = "",
        Unit = "",
      },
      before = function(entry, vim_item)
        vim_item.menu = ({
          buffer = "[BUF]",
          nvim_lsp = "[LSP]",
          luasnip = "[SNIP]",
          treesitter = "[TS]",
          nvim_lua = "[LUA]",
          spell = "[SPELL]",
          path = "[PATH]",
          orgmode = "[ORG]",
        })[entry.source.name]
        return vim_item
      end,
    },
  },
  {
    "glepnir/nerdicons.nvim",
    cmd = { "NerdIcons" },
    config = function() require("nerdicons").setup {} end,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection" },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.dbs = require "user.plugins.dbs_url.dbs"
      vim.g.db_ui_save_location = "~/db_ui_queries"
      vim.g.db_ui_win_position = "right"
      -- vim.g.db_ui_disable_mappings = 1
      vim.g.db_ui_show_database_icon = 1
    end,
    config = function() end,
    dependencies = {
      { "tpope/vim-dadbod", cmd = "DB" },
      {
        "nanotee/sqls.nvim",
        ft = "sql",
      },
    },
  },

}
