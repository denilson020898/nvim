require('nvim-test').setup()
require('nvim-test.runners.pytest'):setup {command='pytest --odoo-database=absale --odoo-log-level=error --odoo-config=/Users/son/d/odoo.conf -s'}


