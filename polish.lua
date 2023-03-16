local create_command = vim.api.nvim_create_user_command

return function()
  create_command(
    "Ld",
    function() vim.cmd "SessionManager! load_current_dir_session" end,
    { desc = "load current dir session" }
  )
  create_command("DI", function() vim.cmd "DBUI" end, { desc = "DBUI" })
  -- vim.cmd "Ld"
end
