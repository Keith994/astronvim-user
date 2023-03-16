-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    guifont = "FiraCodeNerdFontCompleteM-Retina:h11",
    showcmd = false,
    cmdheight = 0,
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    maplocalleader = ",",
    autoformat_enabled = false, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_enabled = true, -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = false, -- disable notifications when toggling UI elements
    heirline_bufferline = true,
    neovide_scale_factor = 0.6,
    neovide_background_color = "#0f1117",
    transparency = 0.8,
    neovide_transparency = 8.0,
    neovide_no_idle = true,
    neovide_remember_window_size = true,
    neovide_refresh_rate_idle = 5,
    neovide_refresh_rate = 60,
    neovide_fullscreen = true,
  },
}

-- If you need more control, you can use the function()...end notation
-- options = function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end,
