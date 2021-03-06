require('formatter.init').setup({
    logging = false,
    filetype = {
        javascript = {
            -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
                    stdin = true
                }
            end
        },
        lua = {
            -- luafmt
            function()
              return {
                exe = "lua-format",
                args = {vim.api.nvim_buf_get_name(0)},
                -- args = {"--indent-count", 2, "--stdin"},
                stdin = true
              }
            end
          }
    }
})
