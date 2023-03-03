local status_ok, signature = pcall(require, "signature")
if not status_ok then return end

signature.setup{
  bind = true,
  toggle_key = "<M-x>",
  floating_window = true,
  floating_window_above_cur_line = true,
  hint_enable = true,
  fix_pos = true,
  debug = false,
  verbose = false,
  zindex = 200,
  timer_interval = 100,
  extra_trigger_chars = {},
  handler_opts = {
    border = "rounded", -- "shadow", --{"╭", "─" ,"╮", "│", "╯", "─", "╰", "│" },
  },
  max_height = 4,
}
