local utils = require "astronvim.utils"
return {
    on_attach = function(_, _)
      vim.defer_fn(function()
        if packer_plugins["rust-tools.nvim"].loaded then return end
        local loader = require("packer").loader
        loader "rust-tools.nvim"
        local maps = { n = {} }
        maps.n["<F5>"] = { "<cmd>RustDebuggables<cr>", desc = "start rust debug" }
        utils.set_mappings(astronvim.user_opts("lsp.mappings", maps), { buffer = bufnr })
      end, 3000)
    end,
}
