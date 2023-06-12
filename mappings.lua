local maps = { n = {}, i = {}, v = {}, o = {}, x = {}, t = {}, c = {},[""] = {} }

maps[""]["<Space>"] = ""
maps.n["<leader>c"] = ""
maps.n["<leader>C"] = ""
maps.n["<leader>w"] = { "󱂬 Windows", desc = nil }
maps.n["<leader>x"] = { " Trouble", desc = nil }

maps.n["<localleader>w"] = { "<cmd>w<cr>", desc = "Save" }
maps.n[";"] = { ":" }
maps.n["<S-h>"] = { "^" }
maps.n["<S-l>"] = { "$" }
maps.n["<localleader>p"] = { ':echo expand("%:p:f")<cr>' }
maps.n["<leader>r"] = { '<cmd>lua require"user.quickrun".run_command()<cr>', desc = "QuickRun" }
maps.n["<leader><enter>"] = { "<cmd>nohlsearch<cr>", desc = "No Highlight" }
maps.t["<C-q>"] = { "<C-\\><C-n>:q<cr>", desc = "Toggle terminal" }
maps.n["<C-w>"] = { " <cmd>wq<cr>", desc = "Write and Quit Window" }
maps.n["<C-q>"] = {
  function()
    local tabnum = vim.api.nvim_tabpage_get_number(0)
    if tabnum == 1 then
      vim.cmd "qa!"
    else
      vim.cmd "tabclose"
    end
  end,
  desc = "Force quit",
}
maps.n["<C-s>"] = {
  function() vim.cmd "SessionManager! save_current_session" end,
  desc = "Force Write And Save Session",
}
-- maps.n["gh"] = { "<cmd>HopWord<CR>", desc = "jump to word position" }
-- maps.n["tt"] = { "<cmd>Neotree focus<cr>", desc = "Focus Explorer" }

-- Alpha
maps.n["<leader>uA"] = { "<cmd>Alpha<cr>", desc = "DashBoard" }

maps.n["<leader>vv"] = {
  function()
    vim.cmd "chdir ~/.config/nvim/lua/user/"
    vim.cmd "SessionManager load_current_dir_session"
  end,
  desc = "Load Nvim Config Session",
}

-- Terminal
maps.c["<c-a>"] = { "<Home>" }
maps.c["<c-e>"] = { "<End>" }
maps.c["<c-f>"] = { "<Right>" }
maps.c["<c-b>"] = { "<Left>" }
maps.c["<c-d>"] = { "<Del>" }
maps.c["<c-h>"] = { "<BS>" }
maps.c["<c-t>"] = { [[<C-R>=expand("%:p:h") . "/" <CR>]] }

-- Navigation
maps.i["<c-a>"] = { "<ESC>^i" }
maps.i["<c-e>"] = { "<End>" }

-- Window Splits And Navigation
maps.n["<leader>ws"] = { "<C-w>s", desc = "window split" }
maps.n["<leader>wv"] = { "<C-w>v", desc = "window vsplit" }
maps.n["<leader>w="] = { "<C-w>=", desc = "window balance" }
maps.n["<leader>wh"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" }
maps.n["<leader>wj"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" }
maps.n["<leader>wk"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" }
maps.n["<leader>wl"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" }

maps.n["<localleader>c"] = {
  function() require("astronvim.utils.buffer").close(0) end,
  desc = "Close buffer",
}
maps.n["<localleader>C"] = {
  function() require("astronvim.utils.buffer").close(0, true) end,
  desc = "Force close buffer",
}
maps.n["<S-k>"] = {
  function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
  desc = "Next buffer",
}
maps.n["<S-j>"] = {
  function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
  desc = "Previous buffer",
}
maps.n[">b"] = {
  function() require("astronvim.utils.buffer").move(vim.v.count > 0 and vim.v.count or 1) end,
  desc = "Move buffer tab right",
}
maps.n["<b"] = {
  function() require("astronvim.utils.buffer").move(-(vim.v.count > 0 and vim.v.count or 1)) end,
  desc = "Move buffer tab left",
}
maps.n["tl"] = { function() require("aerial").toggle() end, desc = "Symbols outline" }

maps.n["<leader>ld"] = { "<cmd>TodoTrouble<cr>", desc = "Todo List" }
maps.n["<leader>fR"] = { function() require("spectre").open_visual() end, desc = "Find and replace" }

maps.n["<leader>dL"] = {
  function()
    require("dap").list_breakpoints()
    vim.cmd "Trouble quickfix"
  end,
  desc = "list breakpoints",
}
maps.n["<leader>gT"] = { "<cmd>GitConflictChooseTheirs<cr>", desc = "Choose Theirs" }
maps.n["<leader>gO"] = { "<cmd>GitConflictChooseOurs<cr>", desc = "Choose Ours" }
maps.n["<leader>gB"] = { "<cmd>GitConflictChooseBoth<cr>", desc = "Choose Both" }

maps.n["<A-j>"] = { "<cmd>m .+1<cr>==", desc = "Move down" }
maps.n["<A-k>"] = { "<cmd>m .-2<cr>==", desc = "Move up" }
maps.i["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" }
maps.i["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" }
maps.v["<A-j>"] = { ":m '>+1<cr>gv==gv", desc = "Move down" }
maps.v["<A-k>"] = { ":m '<-2<cr>gv==gv", desc = "Move up" }

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
maps.n["n"] = { "'Nn'[v:searchforward]", expr = true, desc = "Next search result" }
maps.x["n"] = { "'Nn'[v:searchforward]", expr = true, desc = "Next search result" }
maps.o["n"] = { "'Nn'[v:searchforward]", expr = true, desc = "Next search result" }
maps.n["N"] = { "'nN'[v:searchforward]", expr = true, desc = "Prev search result" }
maps.x["N"] = { "'nN'[v:searchforward]", expr = true, desc = "Prev search result" }
maps.o["N"] = { "'nN'[v:searchforward]", expr = true, desc = "Prev search result" }

maps.n["<leader>xl"] = { "<cmd>lopen<cr>",  desc = "Location List" }
maps.n["<leader>xq"] = { "<cmd>copen<cr>",  desc = "Location List" }

maps.n["[q"] = { vim.cmd.cprev,  desc = "Previous quickfix" }
maps.n["]q"] = { vim.cmd.cnext,  desc = "Next quickfix" }


maps.n["<localleader>t"] = { function() require('dropbar.api').pick() end,  desc = "Next quickfix" }
return maps
