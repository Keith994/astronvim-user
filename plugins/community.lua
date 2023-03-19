local prefix = "s"
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.syntax.hlargs-nvim" },
  { import = "astrocommunity.scrolling.satellite-nvim.satellite-nvim" },
  { import = "astrocommunity.scrolling.mini-animate.mini-animate" },
  { import = "astrocommunity.project.nvim-spectre.nvim-spectre" },
  { import = "astrocommunity/pack/astro/astro" },
  { import = "astrocommunity.pack.go.go" },
  {
    "olexsmir/gopher.nvim",
    enabled = false,
  },
  { import = "astrocommunity.pack.nix.nix" },
  { import = "astrocommunity.pack.rust.rust" },
  { import = "astrocommunity.pack.python.python" },
  { import = "astrocommunity.pack.markdown.markdown" },
  { import = "astrocommunity.pack.json.json" },
  { import = "astrocommunity.motion.mini-move.mini-move" },
  { import = "astrocommunity.motion.mini-bracketed.mini-bracketed" },
  { import = "astrocommunity.motion.mini-surround.minisurround" },
  { import = "astrocommunity.motion.mini-ai.mini-ai" },
  { import = "astrocommunity.editing-support.todo-comments-nvim.todo-comments-nvim" },
  { import = "astrocommunity.comment/mini-comment.mini-comment" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow.nvim-ts-rainbow" },
  { import = "astrocommunity.editing-support.nvim-regexplainer.nvim-regexplainer" },
  { import = "astrocommunity.editing-support.mini-splitjoin.mini-splitjoin" },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim.lsp_lines-nvim" },
  {
    "echasnovski/mini.surround",
    keys = {
      { prefix, desc = "Surround" },
      { "gz",   desc = "" },
    },
    opts = {
      mappings = {
        add = prefix .. "a",            -- Add surrounding in Normal and Visual modes
        delete = prefix .. "d",         -- Delete surrounding
        find = prefix .. "f",           -- Find surrounding (to the right)
        find_left = prefix .. "F",      -- Find surrounding (to the left)
        highlight = prefix .. "h",      -- Highlight surrounding
        replace = prefix .. "r",        -- Replace surrounding
        update_n_lines = prefix .. "n", -- Update `n_lines`
      },
    },
    config = function(_, opts) require("mini.surround").setup(opts) end,
  },
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        progress = {
          enabled = false,
        },
        override = {
          ["config.lsp.signature.enabled"] = false,
        },
        message = {
          enabled = false,
        },
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
      health = {
        checker = false, -- Disable if you don't want health checks to run
      },
      smart_move = {
        enabled = false, -- you can disable this behaviour here
        excluded_filetypes = { "cmp_menu", "cmp_docs", "notify" },
      },
      messages = {
        enabled = true,              -- enables the Noice messages UI
        view = "mini",               -- default view for messages
        view_error = "notify",       -- view for errors
        view_warn = "notify",        -- view for warnings
        view_history = "messages",   -- view for :messages
        view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
      },
      redirect = {
        view = "mini",
        filter = { event = "msg_show" },
      },
    },
  },
}
