return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = { delay = 1000 },
    },
    dependencies = {
      {
        "akinsho/git-conflict.nvim",
        config = true,
        opts = {
          default_mappings = false, -- disable buffer local mapping created by this plugin
          default_commands = true, -- disable commands created by this plugin
          disable_diagnostics = true, -- This will disable the diagnostics in a buffer whilst it is conflicted
          highlights = {
            -- They must have background color, otherwise the default color will be used
            incoming = "DiffChange",
            current = "Visual",
          },
        },
      },
    },
  },
  {
    "antoinemadec/FixCursorHold.nvim",
    event = { "BufReadPost" },
    init = function() vim.g.cursorhold_updatetime = 100 end,
  },
  {
    "declancm/cinnamon.nvim",
    event = { "BufRead", "BufNewFile" },
    config = true,
  },
  {
    "tpope/vim-surround",
    event = "InsertEnter",
    keys = { "c", "d" },
  },
  { "lambdalisue/suda.vim", cmd = { "SudaWrite", "SudaRead" } },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "ray-x/lsp_signature.nvim",
        config = function() require "user.plugins.configs.lsp_signature" end,
      },
    },
  },
  {
    "ray-x/go.nvim",
    ft = "go",
    config = function() require "user.plugins.configs.go" end,
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
  },
  {
    "simrat39/rust-tools.nvim",
    config = function() require "user.plugins.configs.rust-tools" end,
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
    "ggandor/lightspeed.nvim",
    keys = { "s", "S", "f", "F" },
    config = true,
  },
  {
    "TimUntersberger/neogit",
    cmd = "Neogit",
    config = function() require "user.plugins.configs.neogit" end,
  },
  {
    "nvim-orgmode/orgmode",
    ft = "org",
    config = function() require "user.plugins.configs.orgmode" end,
  },
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    config = function() require "user.plugins.configs.trouble" end,
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
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = "BufReadPost",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function() require "user.plugins.configs.todo" end,
  },
  {
    "plasticboy/vim-markdown",
    dependencies = {
      { "godlygeek/tabular" },
      {
        "iamcco/markdown-preview.nvim",
        build = ":cd app && yarn install",
        ft = "markdown",
        init = function() require "user.plugins.configs.markdown-preview" end,
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
    "nvim-pack/nvim-spectre",
    event = "BufReadPost",
    config = function() require "user.plugins.configs.nvim-spectre" end,
  },
  {
    "nanotee/sqls.nvim",
    ft = "sql",
  },
  {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    config = function() require("scrollbar").setup() end,
  },
  {
    "abecodes/tabout.nvim",
    config = function() require "user.plugins.configs.tabout" end,
    dependencies = { { "nvim-treesitter" } }, -- or require if not used so far
    event = "BufReadPost",
  },
  {
    "onsails/lspkind.nvim",
    opts = {
      mode = "symbol",
      symbol_map = {
        Array = "???",
        Boolean = "???",
        Class = "???",
        Constructor = "???",
        Key = "???",
        Namespace = "???",
        Null = "NULL",
        Number = "#",
        Object = "???",
        Package = "???",
        Property = "???",
        Reference = "???",
        Snippet = "???",
        String = "???",
        TypeParameter = "???",
        Unit = "???",
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
}
