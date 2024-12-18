return {
  "rcarriga/nvim-dap-ui",
  specs = {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local dapui = require "dapui"
        local maps = opts.mappings
        maps.n["<Leader>du"] = { desc = "Debugger UI" }
        maps.n["<Leader>duv"] = { function() dapui.open { layout = 4 } end, desc = "Open Debugger UI" }
        maps.n["<Leader>dub"] = { function() dapui.open { layout = 3 } end, desc = "Open Debugger UI" }
        maps.n["<Leader>duo"] = {
          function()
            dapui.open { layout = 1 }
            dapui.open { layout = 3 }
          end,
          desc = "Open Debugger UI",
        }
        maps.n["<Leader>duc"] = { function() dapui.close() end, desc = "Close Debugger UI" }
      end,
    },
  },
  opts = function(_, opts)
    local utils = require "astrocore"
    return utils.extend_tbl {
      layouts = {
        {
          elements = {
            {
              id = "scopes",
              size = 0.25,
            },
            {
              id = "breakpoints",
              size = 0.25,
            },
            {
              id = "stacks",
              size = 0.25,
            },
            {
              id = "watches",
              size = 0.25,
            },
          },
          position = "left",
          size = 40,
        },
        {
          elements = {
            {
              id = "repl",
              size = 0.5,
            },
            {
              id = "console",
              size = 0.5,
            },
          },
          position = "bottom",
          size = 10,
        },
        {
          elements = {
            {
              id = "console",
              size = 1,
            },
          },
          position = "bottom",
          size = 10,
        },
        {
          elements = {
            {
              id = "console",
              size = 1,
            },
          },
          position = "right",
          size = 100,
        },
      },
    }
  end,
  config = function(_, opts)
    local dap, dapui = require "dap", require "dapui"

    dap.listeners.after.event_initialized.dapui_config = function() dapui.open(4) end
    dap.listeners.before.event_terminated.dapui_config = function() print "Dap终止" end
    dap.listeners.before.event_exited.dapui_config = function() end

    dapui.setup(opts)
  end,
}
