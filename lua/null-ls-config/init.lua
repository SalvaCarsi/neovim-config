local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.completion.spell.with({
            filetypes = {'norg'}
        }),
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.code_actions.eslint,
    },
})
