local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = " "

-- Telescope
map("n", "<leader>p", '<cmd>lua require("telescope.builtin").find_files()<cr>')
-- map("n", "<leader>r", '<cmd>lua require("telescope.builtin").registers()<cr>')
map("n", "<leader>g", '<cmd>lua require("telescope.builtin").live_grep()<cr>')
map("n", "<leader>b", '<cmd>lua require("telescope.builtin").buffers()<cr>')
map("n", "<leader>j", '<cmd>lua require("telescope.builtin").help_tags()<cr>')
map("n", "<leader>h", '<cmd>lua require("telescope.builtin").git_bcommits()<cr>')
map("n", "<leader>f", '<cmd>lua require("telescope.builtin").file_browser()<cr>')
map("n", "<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
map("n", "<leader>i", '<cmd>lua require("telescope.builtin").git_status()<cr>')

-- Harpoon
map("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", {noremap = true})
map("n", "<leader>m", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", {noremap = true})
map("n", "<leader>n", "<cmd>lua require('harpoon.ui').nav_next()<cr>", {noremap = true})
map("n", "<leader>q", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", {noremap = true})

-- Harpoon Nav File
map("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", {noremap = true})
map("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", {noremap = true})
map("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", {noremap = true})

-- LSP
local bufopts = { noremap=true, silent=true, buffer=bufnr}
local opts = { noremap=true, silent=true }
    --LSP Diagnostic
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    --LSP Movement
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set('n', 'aca', vim.lsp.buf.code_action, bufopts)
map("n", "<leader>gr", '<cmd>lua require("telescope.builtin").lsp_references()<cr>')
-- LSP Rename
vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, bufopts)
vim.keymap.set('i', '<F2>', vim.lsp.buf.rename, bufopts)
vim.keymap.set('v', '<space>r', vim.lsp.buf.rename, bufopts)

-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
map("n", "<leader>ca", '<cmd>lua require("telescope.builtin").lsp_code_actions()<cr>')
map("n", "<leader>cs", '<cmd>lua require("telescope.builtin").lsp_document_symbols()<cr>')
map("n", "<leader>cd", '<cmd>lua require("telescope.builtin").lsp_document_diagnostics()<cr>')
















