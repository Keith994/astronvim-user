local utils = require "astronvim.utils"
return function(_, bufnr)
  local maps = { n = {} }
  maps.n["<S-k>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
  }
  utils.set_mappings(astronvim.user_opts("lsp.mappings", maps), { buffer = bufnr })
end
