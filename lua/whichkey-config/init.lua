local wk = require("which-key")
local mappings = {
   q = {":q<cr>", "  Quit"},
   s = {":wq<cr>", "﬚  Save & Quit"},
   w = {":w<cr>", "  Save"},
   x = {":bdelete<cr>", "  Close"},
   l = {":luafile %<cr>", "勒  Reload lua"},
   p = {":PackerSync<cr>", "  PackerSync"},
   c = {":term<cr>", "  Terminal"},
   t = {":Telescope find_files<cr>", "  Find Files"},
   i = {
       name = "  lsp",
       i = {":LspInfo<cr>", "Connected Language Servers" },
       k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
       K = {"<cmd>Lspsaga hover_doc<cr>", "Hover Commands"},
       w = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder"},
       W = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Workspace Folder"},
       l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "List Workspace Folders"},
       d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition"},
       D = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration"},
       r = {"<cmd>lua vim.lsp.buf.references()<cr>", "References"},
       R = {"<cmd>Lspsaga rename<cr>", "Rename"},
       a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
       e = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostics"},
       n = {"<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic"},
       N = {"<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic"}
   },
   v = {":vsplit<cr>", " vsplit" },
   m = {":TransparentToggle<cr>", "RANS"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
