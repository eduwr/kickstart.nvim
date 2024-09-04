return {
  'nvimtools/none-ls.nvim',
  -- TODO: I didn't like this plugin need to test the default instalation, often times eslint_d fail to load
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint_d,
        require 'none-ls.diagnostics.eslint_d',
      },
    }

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = '[F]ormat [C]ode' })
  end,
}
