return {
  "nvim-java/nvim-java",
  ft = "java",
  opts = {
    spring_boot_tools = {
      enable = false,
    },
  },
  specs = {
    { "mfussenegger/nvim-jdtls", optional = true, enabled = false },
    {
      "AstroNvim/astrolsp",
      optional = true,
      ---@type AstroLSPOpts
      opts = {
        java_cmd = "~/.local/share/nvim/mason/bin/java",
        servers = { "jdtls" },
        handlers = {
          jdtls = function(server, opts)
            require("lazy").load { plugins = { "nvim-java" } }
            local utils = require "astrocore"
            opts = utils.extend_tbl({
              settings = {
                java = {
                  configuration = {
                    runtimes = {
                      {
                        name = "jdk11",
                        path = "/home/keith/.jenv/jvm/jdk-11.0.9.1+1",
                        default = true,
                      },
                      {
                        name = "jdk17",
                        path = "/usr/lib/jvm/java-17-openjdk",
                      },
                      {
                        name = "jdk21",
                        path = "/usr/lib/jvm/java-21-openjdk",
                      },
                    },
                  },
                },
              },
              init_options = {
                bundles = require("spring_boot").java_extensions(),
              },
            }, opts)
            local dap, _ = require "dap", require "dapui"
            dap.listeners.before.event_terminated.dapui_config = function() vim.cmd [[echom "测试完成"]] end
            dap.listeners.before.event_exited.dapui_config = function() end
            require("lspconfig")[server].setup(opts)
          end,
        },
      },
    },
  },
}
