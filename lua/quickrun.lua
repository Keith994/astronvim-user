local m = { lua = { "lua " }, rs = { "cargo run " }, sh = { "bash " } }
local M = {}

M.run_command = function()
  local cmd = nil
  local file_type = vim.fn.expand "%:e"
  local file_name = vim.fn.expand "%:p"
  if vim.bo.filetype == "dashboard" then return end
  if vim.bo.filetype == "NvimTree" then return end
  if file_type == "go" then
    if file_name:match "_test" then
      vim.cmd ":GoTestFunc -v --count=1"
    else
      vim.cmd ":GoRun"
    end
    return
  elseif file_type == "java" then
    if file_name:match "Test" then
      print "Run: JavaTestRunCurrentMethod"
      vim.cmd ":JavaTestRunCurrentMethod"
      require("dapui").open { layout = 2 }
    else
      print "Run: JavaRunnerRunMain"
      vim.cmd ":JavaRunnerRunMain"
    end
  elseif file_type == "rs" then
    vim.cmd "RustRunnables"
  else
    print "Quick Run: "
    local output_list = vim.fn.split(vim.fn.system(cmd .. file_name), "\n")
    for _, v in ipairs(output_list) do
      print(v)
    end
    print "  \n"
  end
end

return M
