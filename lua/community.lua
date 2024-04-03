-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- import/override with your plugins folder
  --
  -- { import = "astrocommunity.code-runner.overseer-nvim" },
  -- { import = "astrocommunity.code-runner.sniprun" },

  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.syntax.hlargs-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.full-dadbod" },
  -- {
  --   "kristijanhusak/vim-dadbod-ui",
  --   init = function()
  --     vim.g.db_ui_use_nerd_fonts = 1
  --     vim.g.dbs = require "plugins.dbs_url.dbs"
  --     vim.g.db_ui_save_location = "~/db_ui_queries"
  --     vim.g.db_ui_win_position = "right"
  --     -- vim.g.db_ui_disable_mappings = 1
  --     vim.g.db_ui_show_database_icon = 1
  --   end,
  -- },
  { import = "astrocommunity.motion.mini-bracketed" },
  { import = "astrocommunity.motion.mini-surround" },
  -- {
  --   "echasnovski/mini.ai",
  --   opts = { n_lines = 500 },
  -- },
  -- { import = "astrocommunity.motion.mini-ai.mini-ai" },
  { import = "astrocommunity.comment.mini-comment" },
  -- { import = "astrocommunity.editing-support.nvim-regexplainer" },
  -- { import = "astrocommunity.editing-support.dial-nvim" },
  -- { import = "astrocommunity.completion.codeium-vim" }, -- 免费的AI编程助手，会收集信息
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  { import = "astrocommunity.git.neogit" },
  -- { import = "astrocommunity.test.nvim-coverage" },
}
