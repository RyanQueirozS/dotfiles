local vim = vim
local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        -- Golang
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.golines,

        -- C/C++
        null_ls.builtins.formatting.clang_format,

        -- Json
        null_ls.builtins.formatting.fixjson,

        -- Lua
        null_ls.builtins.formatting.stylua,

        --rust
        null_ls.builtins.formatting.rustfmt,
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})