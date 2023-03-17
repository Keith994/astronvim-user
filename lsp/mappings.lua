-- easily add or disable built in mappings added during LSP attaching
return {
  n = {
    ["gy"] = { function() vim.lsp.buf.hover() end, desc = "Hover symbol details" },
    ["<leader>la"] = { function() vim.lsp.buf.code_action() end, desc = "LSP code action" },
    ["ga"] = { function() vim.lsp.buf.code_action() end, desc = "LSP code action" },
    ["<localleader>f"] = { function() vim.lsp.buf.format() end, desc = "Format code" },
    ["gR"] = { function() vim.lsp.buf.rename() end, desc = "Rename current symbol" },
    ["gD"] = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", desc = "Type Defnition" },
    ["gr"] = { "<cmd>Trouble lsp_references<CR>", desc = "References of current symbol" },
    ["<leader>ld"] = { "<cmd>Trouble document_diagnostics<CR>", desc = "Open document diagnostics" },
    ["<leader>lw"] = { "<cmd>Trouble workspace_diagnostics<CR>", desc = "Open workspace diagnostics" },
    ["[d"] = { function() vim.diagnostic.goto_prev {} end, desc = "Previous diagnostic" },
    ["]d"] = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" },
    ["gl"] = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
    -- C-S-F9
    ["<F45>"] = { function() require("dap").clear_breakpoints() end, desc = "run_to_cursor" },
    -- C-f10
    ["<F34>"] = { function() require("dap").run_to_cursor() end, desc = "run_to_cursor" },
    ["<F9>"] = { function() require("dap").toggle_breakpoint() end, desc = "toggle_breakpoint" },
    ["<F12>"] = { function() require("dapui").toggle() end, desc = "toggle_breakpoint" },
    -- S-F9
    ["<F21>"] = {
      function()
        vim.ui.input({ prompt = "Breakpoint condition: " }, function(input) require("dap").set_breakpoint(input) end)
      end,
      desc = "condition_breakpoint",
    },
  },
  v = {
    ["<localleader>f"] = { function() vim.lsp.buf.format() end, desc = "Format code" },
  },
}
