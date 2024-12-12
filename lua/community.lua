-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- import/override with your plugins folder
  --
  -- { import = "astrocommunity.code-runner.overseer-nvim" },
  -- { import = "astrocommunity.code-runner.sniprun" },

  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.syntax.hlargs-nvim" },
  { import = "astrocommunity.search.nvim-spectre" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  -- { import = "astrocommunity.lsp.nvim-java" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },
  { import = "astrocommunity.editing-support.bigfile-nvim" },
  -- { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.test.nvim-coverage" },
  -- { import = "astrocommunity.pack.java" },
  -- { import = "astrocommunity.git.mini-diff" },
  {
    "kristijanhusak/vim-dadbod-ui",
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.dbs = require "plugins.dbs_url.dbs"
      vim.g.db_ui_save_location = "~/db_ui_queries"
      vim.g.db_ui_win_position = "right"
      -- vim.g.db_ui_disable_mappings = 1
      vim.g.db_ui_show_database_icon = 1
    end,
  },
  { import = "astrocommunity.motion.mini-bracketed" },
  { import = "astrocommunity.motion.mini-surround" },
  -- {
  --   "echasnovski/mini.ai",
  --   opts = { n_lines = 500 },
  -- },
  -- { import = "astrocommunity.motion.mini-ai.mini-ai" },
  { import = "astrocommunity.comment.mini-comment" },
  { import = "astrocommunity.pack.hyprlang" },
  -- { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.cs" },
  -- { import = "astrocommunity.pack.proto" },
  { import = "astrocommunity.programming-language-support.nvim-jqx" },
  -- { import = "astrocommunity.editing-support.nvim-regexplainer" },
  -- { import = "astrocommunity.editing-support.dial-nvim" },
  -- { import = "astrocommunity.completion.codeium-vim" }, -- 免费的AI编程助手，会收集信息
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  { import = "astrocommunity.git.neogit" },
  -- { import = "astrocommunity.git.fugit2-nvim" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.editing-support.suda-vim" },
  -- { import = "astrocommunity.completion.cmp-cmdline" },
  -- { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },
  -- { import = "astrocommunity.media.pets-nvim" },
  -- { import = "astrocommunity.media.image-nvim" },
  -- { import = "astrocommunity.motion.nvim-spider" },
  -- { import = "astrocommunity.indent.indent-rainbowline" },
  -- { import = "astrocommunity.test.nvim-coverage" },
}
