-- Extend LSP configuration
return {
    servers = require "user.lsp.servers",
    formatting = require "user.lsp.formatting",
    mappings = require "user.lsp.mappings",
    config = require "user.lsp.config",
    on_attach = require "user.lsp.on_attach",
    setup_handlers = require "user.lsp.setup_handlers",
}
