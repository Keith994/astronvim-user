-- Add overrides for LSP server settings, the keys are the name of the server
return {
    rust_analyzer = require "user.lsp.config.rust-analyzer",
    gopls = require "user.lsp.config.gopls",
    jsonls = require "user.lsp.config.jsonls",
    sqlls = require "user.lsp.config.sqlls",
    -- sqls = require "user.lsp.server-settings.sqls",
}
