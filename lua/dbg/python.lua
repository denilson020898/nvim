require('dap-python').setup(os.getenv("CONDA_PYTHON_EXE"))

table.insert(require('dap').configurations.python, 1, {
  type = 'python',
  request = 'attach',
  name = 'ODOO WITH DEFAULT REMOTE ATTACH',
  connect = function()
    local host = '127.0.0.1'
    local port = 5678
    return { host = host, port = port }
  end,
})
