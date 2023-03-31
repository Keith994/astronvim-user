return {
    settings = {
        go = {
            formatting = "gofumpt",
        },
        gopls = {
            -- hints = {
            --     compositeLiteralFields = true,
            --     assignVariableTypes = true,
            --     compositeLiteralTypes = true,
            --     constantValues = true,
            --     parameterNames = true,
            --     functionTypeParameters = true,
            -- },
            analyses = {
                unusedparams = false,
            },
            staticcheck = false,
        },
    },
}
