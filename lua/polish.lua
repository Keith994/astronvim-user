-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

local create_command = vim.api.nvim_create_user_command

create_command(
  "Ld",
  function() require("resession").load(vim.fn.getcwd(), { dir = "dirsession" }) end,
  { desc = "load current dir session" }
)
create_command("DI", function() vim.cmd "DBUI" end, { desc = "DBUI" })
create_command("DapUIOpen", function() require("dapui").open() end, { desc = "DapUI Open" })
create_command("DapUIClose", function() require("dapui").close() end, { desc = "DapUI Close" })
create_command(
  "DapConsole",
  function()
    require("dapui").toggle {
      layout = 2,
    }
  end,
  { desc = "DapUI Console Toggle" }
)
