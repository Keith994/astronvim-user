require("tabout").setup {
  tabkey = "<c-o>", -- key to trigger tabout, set to an empty string to disable
  backwards_tabkey = "<s-c-o>", -- key to trigger backwards tabout, set to an empty string to disable
  act_as_tab = true, -- shift content if tab out is not possible
  act_as_shift_tab = true, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
  default_tab = "<C-t>", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
  default_shift_tab = "<C-d>", -- reverse shift default action,
  enable_backwards = true, -- well ...
  completion = true, -- if the tabkey is used in a completion pum
  tabouts = {
    { open = "'", close = "'" },
    { open = '"', close = '"' },
    { open = "`", close = "`" },
    { open = "(", close = ")" },
    { open = "[", close = "]" },
    { open = "{", close = "}" },
    { open = "<", close = ">" },
  },
}
