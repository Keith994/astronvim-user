local create_command = vim.api.nvim_create_user_command
local function augroup(name) return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true }) end

return function()
  create_command(
    "Ld",
    function() vim.cmd "SessionManager! load_current_dir_session" end,
    { desc = "load current dir session" }
  )
  create_command("DI", function() vim.cmd "DBUI" end, { desc = "DBUI" })

  -- go to last loc when opening a buffer
  vim.api.nvim_create_autocmd("BufReadPost", {
    group = augroup "last_loc",
    callback = function()
      local mark = vim.api.nvim_buf_get_mark(0, '"')
      local lcount = vim.api.nvim_buf_line_count(0)
      if mark[1] > 0 and mark[1] <= lcount then pcall(vim.api.nvim_win_set_cursor, 0, mark) end
    end,
  })
  -- resize splits if window got resized
  vim.api.nvim_create_autocmd({ "VimResized" }, {
    group = augroup "resize_splits",
    callback = function() vim.cmd "tabdo wincmd =" end,
  })
  -- vim.cmd "Ld"
end
