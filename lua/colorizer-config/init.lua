require'colorizer'.setup()

-- require 'colorizer'.setup {
--   'css';
--   'lua';
--   'javascript';
--   html = {
--     mode = 'foreground';
--   }
-- }

require 'colorizer'.setup({
  'css';
  'lua';
  'javascript';
  html = { mode = 'background' };
}, { mode = 'foreground' })
