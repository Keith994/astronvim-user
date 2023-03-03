local utils = require "astronvim.utils"
return {
    on_attach = function(_, bufnr)
      local maps = { n = {} }
      maps.n["<F17>"] = {
          function()
            vim.cmd "GoBreakSave"
            require("go.dap").stop()
          end,
          desc = "stop",
      }
      maps.n["gA"] = { "<cmd>GoCodeLenAct<CR>", desc = "CodeLenAct" }
      utils.set_mappings(astronvim.user_opts("lsp.mappings", maps, true), { buffer = bufnr })
    end,
    settings = {
        go = {
            formatting = "goimports",
        },
        gopls = {
            hints = {
                compositeLiteralFields = true,
                assignVariableTypes = true,
                compositeLiteralTypes = true,
                constantValues = true,
                parameterNames = true,
                functionTypeParameters = true,
            },
            analyses = {
                unusedparams = true,
            },
            staticcheck = false,
        },
    },
}
