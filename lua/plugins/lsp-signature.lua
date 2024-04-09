if vim.g.vscode then return {} end
return {
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
}
