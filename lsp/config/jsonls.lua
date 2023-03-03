return {
    settings = {
        json = {
            formatting = "jq",
            validate = { enable = true },
        },
    },
    setup = {
        commands = {
            Format = {
                function() vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 }) end,
            },
        },
    },
}
