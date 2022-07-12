vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "bash" , "html" , "python" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
   autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {"#f38ba8","#cba6f7","#a6e3a1", "#f9e2af","#f5c2e7"} -- table of hex strings
  },
  autopairs = {
      enable = true 
  },
  }
 


