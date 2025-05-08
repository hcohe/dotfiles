return {
  'CRAG666/code_runner.nvim',
  dependencies = {
    'preservim/vimux',
  },
  config = function()
    require('code_runner').setup {
      filetype = {
        python = 'uv run',
      },
      mode = 'vimux',
    }
    vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
  end,
}
