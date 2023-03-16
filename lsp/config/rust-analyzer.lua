local utils = require "astronvim.utils"
return {
  on_attach = function(_, _)
    vim.defer_fn(function()
      local maps = { n = {} }
      maps.n["<F5>"] = { "<cmd>RustDebuggables<cr>", desc = "start rust debug" }
      utils.set_mappings(astronvim.user_opts("lsp.mappings", maps))
    end, 5000)
  end,
}
