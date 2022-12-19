local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- global options
o.scrolloff = 8
o.smarttab = true
o.softtabstop = 4
o.shiftwidth = 4
o.tabstop = 4
-- o.autoindent = true
-- o.smartindent = true

-- windows-local options
wo.number = true
-- wo.relativenumber = true

-- buffer-local options
bo.expandtab = true

-- bo.smartindent = true
-- bo.softtabstop = 4
-- bo.shiftwidth = 4
-- bo.expandtab = true
-- bo.tabstop = 4

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]

require('plugins')
require('mappings')
-- require('lspconfig').pyright.setup{}

require("everybody-wants-that-line")
-- -- lualine
--   require('lualine').setup {
--     options = {
--       -- ... your lualine config
--       theme = 'tokyonight'
--       -- ... your lualine config
--     }
--   }

vim.g.tokyonight_style = "night"


-- Treesitter - I'll look for an alternative for this
require'nvim-treesitter.configs'.setup {
-- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "cpp", "python", "typescript", "bash", "css", "html"},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing (for "all")
    ignore_install = {},

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = {},

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
    },
    },
    indent = {
        enable = true
    }
}
