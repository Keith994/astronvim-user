return {
  "AstroNvim/astrocommunity",
  -- soclorscheme
  -- { import = "astrocommunity.colorscheme.rose-pine" },
  -- { "rose-pine/neovim", lazy = false },
  -- { import = "astrocommunity.colorscheme.oxocarbon" },
  -- { "nyoom-engineering/oxocarbon.nvim", lazy = false },
  -- { import = "astrocommunity.colorscheme.nightfox" },
  -- { "EdenEast/nightfox.nvim", lazy = false },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { 
    "catppuccin", 
    lazy = false , 
    opts = {
      integrations = {
        -- sandwich = false,
        -- noice = false,
        mini = true,
        leap = true,
        markdown = true,
        -- neotest = true,
        cmp = true,
        overseer = false,
        lsp_trouble = true,
        ts_rainbow2 = true,
      },
    },
  },
  -- { import = "astrocommunity.colorscheme.everforest" },
  -- { "sainnhe/everforest", lazy = false },
  -- { import = "astrocommunity.colorscheme.gruvbox" },
  -- { "ellisonleao/gruvbox.nvim", lazy = false },
  -- { import = "astrocommunity.colorscheme.kanagawa" },
  -- { "rebelot/kanagawa.nvim", lazy = false },
  -- { import = "astrocommunity.colorscheme.mini-base16" },
  -- { "echasnovski/mini.base16", lazy = false },
  -- { import = "astrocommunity.colorscheme.onigiri" },
  -- { "kaiuri/onigiri.nvim", lazy = false },
  -- { import = "astrocommunity.colorscheme.tokyonight" },
  -- { "folke/tokyonight.nvim", lazy = false },
  -- { import = "astrocommunity.color.ccc-nvim" },
  -- { import = "astrocommunity.color.tint-nvim" },
  { import = "astrocommunity.color.headlines-nvim" },
  -- { import = "astrocommunity.media.drop-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.color.modes-nvim" },
  -- { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.syntax.hlargs-nvim" },
  -- { import = "astrocommunity.scrolling.satellite-nvim.satellite-nvim" },
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
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2.nvim-ts-rainbow2" },
  { import = "astrocommunity.editing-support.nvim-regexplainer.nvim-regexplainer" },
  { import = "astrocommunity.editing-support.mini-splitjoin.mini-splitjoin" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim.lsp_lines-nvim" },
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- {
  --   "folke/noice.nvim",
  --   opts = {
  --     lsp = {
  --       progress = {
  --         enabled = false,
  --       },
  --       override = {
  --         ["config.lsp.signature.enabled"] = false,
  --       },
  --       message = {
  --         enabled = false,
  --       },
  --       hover = {
  --         enabled = false,
  --       },
  --       signature = {
  --         enabled = false,
  --       },
  --     },
  --     health = {
  --       checker = false, -- Disable if you don't want health checks to run
  --     },
  --     smart_move = {
  --       enabled = false, -- you can disable this behaviour here
  --       excluded_filetypes = { "cmp_menu", "cmp_docs", "notify" },
  --     },
  --     messages = {
  --       enabled = true,              -- enables the Noice messages UI
  --       view = "mini",               -- default view for messages
  --       view_error = "notify",       -- view for errors
  --       view_warn = "notify",        -- view for warnings
  --       view_history = "messages",   -- view for :messages
  --       view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
  --     },
  --     redirect = {
  --       view = "mini",
  --       filter = { event = "msg_show" },
  --     },
  --   },
  -- },
}
