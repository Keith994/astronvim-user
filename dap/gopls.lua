local go = function(callback, config)
  local stdout = vim.loop.new_pipe(false)
  local stdout2 = vim.loop.new_pipe(true)
  local handle
  local pid_or_err
  local host = config.host or "127.0.0.1"
  local port = config.port or tostring(math.random(38697, 39000))
  local addr = string.format("%s:%s", host, port)
  local opts = {
    stdio = { nil, stdout, stdout2 },
    args = { "dap", "-l", addr },
    detached = true
  }
  handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
    stdout:close()
    stdout2:close()
    handle:close()
    if code ~= 0 then print('dlv exited with code', code) end
  end)
  assert(handle, 'Error running dlv: ' .. tostring(pid_or_err))
  local repl = require('dap.repl')
  local logFunc = function(err, chunk)
    assert(not err, err)
    if chunk then
      vim.schedule(function()
        local lnum = repl.append(chunk)
        if lnum >= 20000 then
          repl.clear()
        end
      end)
    end
  end
  stdout:read_start(logFunc)
  stdout2:read_start(logFunc)
  -- Wait for delve to start
  vim.defer_fn(function()
    callback({ type = "server", host = "127.0.0.1", port = port })
  end, 100)
end
return go
