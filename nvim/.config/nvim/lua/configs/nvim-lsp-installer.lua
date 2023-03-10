--  local lsp_installer = require("nvim-lsp-installer")
--  
--  lsp_installer.settings = {
--      ensure_installed = {pyright, ccls, tsserver, bashls, html, cssls, sumneko_lua}, 
--      ui = {
--          icons = {
--              server_installed = "✓",
--              server_pending = "➜",
--              server_uninstalled = "✗"
--          },
--          keymaps = {
--              -- Keymap to expand a server in the UI
--              toggle_server_expand = "<CR>",
--              -- Keymap to install a server
--              install_server = "i",
--              -- Keymap to reinstall/update a server
--              update_server = "u",
--              -- Keymap to uninstall a server
--              uninstall_server = "X",
--          },
--      },
--  
--     -- The directory in which to install all servers.
--      install_root_dir = vim.fn.stdpath"data".."lsp_servers",
--  
--      pip = {
--          -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
--          -- and is not recommended.
--          --
--          -- Example: { "--proxy", "https://proxyserver" }
--          install_args = {},
--      },
--  
--      -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
--      -- debugging issues with server installations.
--      log_level = vim.log.levels.INFO,
--  
--      -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
--      -- servers that are requested to be installed will be put in a queue.
--      max_concurrent_installers = 4,
--  }
--  
require("nvim-lsp-installer").setup{
     ensure_installed = {"pyright", "ccls", "tsserver", "bashls", "html", "cssls", "sumneko_lua"},
     automatic_installation = true,
     ui = {
	 icons = {
	     server_installed = "✓",
	     server_pending = "➜",
	     server_uninstalled = "✗"
	 },
	 keymaps = {
	     -- Keymap to expand a server in the UI
	     toggle_server_expand = "<CR>",
	     -- Keymap to install a server
	     install_server = "i",
	     -- Keymap to reinstall/update a server
	     update_server = "u",
	     -- Keymap to uninstall a server
	     uninstall_server = "X",
	 },
     },
    -- The directory in which to install all servers.
     install_root_dir = vim.fn.stdpath"data".."lsp_servers",

     pip = {
	 -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
	 -- and is not recommended.
	 --
	 -- Example: { "--proxy", "https://proxyserver" }
	 install_args = {},
     },

     -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
     -- debugging issues with server installations.
     log_level = vim.log.levels.INFO,

     -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
     -- servers that are requested to be installed will be put in a queue.
     max_concurrent_installers = 4,
	}
