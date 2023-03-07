local status_ok, signature = pcall(require, "lsp_signature")
if not status_ok then return end

signature.setup {
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
}
