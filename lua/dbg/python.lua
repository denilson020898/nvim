require('dap-python').setup()
table.insert(require('dap').configurations.python, {
  type = 'python';
  request = 'attach';
  name = 'attach_remote_default';
  connect = function()
    local host = '127.0.0.1'
    local port = 5678
    return { host = host, port = port }
  end;
})
