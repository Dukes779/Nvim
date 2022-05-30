local wk = require("which-key")
local mappings = {
   q = {":q<cr>", "Quit"},
   Q = {":wq<cr>", "Save & Quit"},
   w = {":w<cr>", "Save"},
   x = {":bdelete<cr>", "Close"},
   l = {":luafile %<cr>", "Reload lua"},
   p = {":PackerSync<cr>", "PackerSync"},
   t = {":term<cr>", "Terminal"},
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
