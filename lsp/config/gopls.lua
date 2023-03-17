return {
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
