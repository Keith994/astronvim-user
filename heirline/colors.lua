return function(hl)
  local bg_color = "#21242c"
  local fg_color = "#f5f6fa"
  hl.fg = fg_color
  hl.bg = bg_color
  hl.section_fg = fg_color
  hl.section_bg = bg_color

  hl.blank_bg = bg_color

  hl.mode_fg = fg_color
  hl.mode_right = "#009688"

  hl.file_info_bg = "#03A9F4"

  -- hl.inactive = HeirlineInactive
  hl.normal = "#4CAF50"
  hl.insert = "#009688"
  hl.visual = "#3F51B5"
  hl.replace = "#E91E63"
  hl.command = "#FFC107"
  hl.terminal = "#795548"

  hl.git_branch_fg = fg_color
  hl.git_branch_bg = "#00BCD4"

  hl.git_diff = "#9E9E9E"

  -- hl.git_added = "#e74c3c"
  -- hl.git_changed = "#e67e22"
  -- hl.git_removed = "#f1c40f"

  hl.folder_icon_bg = "#a6e3a2"
  hl.folder_bg = "#607D8B"
  hl.word_file_icon_bg = "#a6e3a2"
  hl.word_file_bg = "#607D8B"

  hl.scroll_text_icon_bg = "#a6e3a2"
  hl.scroll_text_bg = "#607D8B"
  return hl
end
