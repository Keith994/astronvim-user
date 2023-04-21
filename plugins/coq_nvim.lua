enabled = false
return {
  { "hrsh7th/nvim-cmp", enabled = function() return not enabled end },
  { "L3MON4D3/LuaSnip", enabled = function() return not enabled end },
  {
    "ms-jpq/coq_nvim",
    branch = "coq",
    enabled = enabled,
    -- lazy = false,
    dependencies = {
      { "ms-jpq/coq.artifacts",  branch = "artifacts" },
      { "ms-jpq/coq.thirdparty", branch = "3p" },
    },
    init = function()
      vim.g.coq_settings = {
        keymap = {
          recommended = true,
          pre_select = true,
          -- repeat = nil,
          bigger_preview = "<c-m>",
          jump_to_mark = "<c-'>",
          eval_snips = nil,
        },
        completion = {
          always = true,
          replace_prefix_threshold = 1,
          replace_suffix_threshold = 20,
          smart = false,
          skip_after = {},
        },
        match = {
          max_results = 20,
          -- proximate_lines = 16,
          exact_matches = 1,
          look_ahead = 2,
          fuzzy_cutoff = 0.7,
        },
        display = {
          mark_highlight_group = "Pmenu",
          ghost_text = {
            enabled = true,
            context = { " 〈 ", " 〉" },
            highlight_group = "Comment",
          },
          pum = {
            fast_close = true,
            y_max_len = 16,
            y_ratio = 0.3,
            x_max_len = 66,
            x_truncate_len = 12,
            ellipsis = "...",
            kind_context = { " [", "]" },
            source_context = { "「", "」" },
          },
          preview = {
            x_max_len = 88,
            resolve_timeout = 0.09,
            border = "rounded",
          },
          icons = {
            mode = "short", -- "one", "short", "long"
            spacing = 1,
            -- aliases = {},
          },
        },
        clients = {
          lsp = { resolve_timeout = 0.2 },
          tags = {
            enabled = false,
            parent_scope = " ⇊",
            path_sep = " ⇉ ",
          },
          snippets = {
            user_path = nil,
            warn = { "missing", "outdated" },
          },
          paths = {
            resolution = { "cwd", "file" },
            path_seps = { "/" }, -- "\"
            preview_lines = 3,
          },
          tree_sitter = {
            enabled = true,
            slow_threshold = 0.1,
            path_sep = " ⇊",
          },
          buffers = {
            match_syms = false,
            same_filetype = false,
          },
        },
      }

      -- vim.cmd [[
      -- ino <silent><expr> <Esc>   pumvisible() ? \"\<C-e><Esc>\" : \"\<Esc>\"
      -- ino <silent><expr> <C-c>   pumvisible() ? \"\<C-e><C-c>\" : \"\<C-c>\"
      -- ino <silent><expr> <BS>    pumvisible() ? \"\<C-e><BS>\"  : \"\<BS>\"
      -- ino <silent><expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? \"\<C-e><CR>\" : \"\<C-y>\") : \"\<CR>\"
      -- ino <silent><expr> <Tab>   pumvisible() ? \"\<C-n>\" : \"\<Tab>\"
      -- ino <silent><expr> <S-Tab> pumvisible() ? \"\<C-p>\" : \"\<BS>\"
      -- ]]
      -- vim.cmd ":COQnow"
    end,
  },
}
