return {
  "JavaHello/spring-boot.nvim",
  commit = "5ceb380",
  lazy = true,
  ft = "java",
  opts = {},
  specs = {
    {
      "AstroNvim/astrolsp",
      optional = true,
      ---@type AstroLSPOpts
      opts = {
        servers = { "spring_boot" },
        handlers = {
          spring_boot = function(server, opts)
            require("lazy").load { plugins = { "spring_boot" } }
            vim.g.spring_boot = {
              jdt_extensions_path = "~/.local/share/nvim/mason/packages/spring-boot-tools/",
              jdt_extensions_jars = {
                "io.projectreactor.reactor-core.jar",
                "org.reactivestreams.reactive-streams.jar",
                "jdt-ls-commons.jar",
                "jdt-ls-extension.jar",
              },
            }
            local utils = require "astrocore"
            opts = utils.extend_tbl({
              ls_path = "~/.local/share/nvim/mason/packages/spring-boot-tools/",
              jdtls_name = "jdtls",
              java_cmd = "~/.local/share/nvim/mason/bin/java",
            }, opts)
            require("lspconfig")[server].setup(opts)
          end,
        },
      },
    },
  },
}
