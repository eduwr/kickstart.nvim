return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylelua,
        null_ls.builtins.formatting.prettier, -- TODO: missing test
        null_ls.builtins.diagnostics.eslint_d, -- TODO: missing test
      },
    }

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end,
}
