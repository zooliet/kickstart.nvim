return {
  'nvim-tree/nvim-web-devicons',
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      map('n', '<S-TAB>', '<Cmd>BufferPrevious<CR>', opts)
      map('n', '<TAB>', '<Cmd>BufferNext<CR>', opts)
      map('n', '<C-x>', '<Cmd>BufferClose<CR>', opts)
    end,
  }
}

