local npairs = require('nvim-autopairs')

require('nvim-autopairs').setup({
    check_ts = true,
})
-- add option map_cr
npairs.setup({ map_cr = true })

