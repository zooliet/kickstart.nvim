vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  -- virtual_text = true,
  virtual_text = { spacing = 4, prefix = '' }, -- or false
  signs = true,
  underline = false,
  update_in_insert = false,
})

-- local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
-- local signs = { Error = ' ', Warn = ' ', Hint = '⚑ ', Info = ' ' }
local signs = { Error = 'E ', Warn = 'W ', Hint = 'H ', Info = 'I ' }

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.cmd [[
  highlight DiagnosticVirtualTextError guifg=#666666
  highlight DiagnosticVirtualTextWarn guifg=#666666
  highlight DiagnosticVirtualTextHint guifg=#666666
  highlight DiagnosticVirtualTextInfo guifg=#666666
]]
-- vim.cmd [[
--   highlight DiagnosticVirtualTextError guifg=#414868
--   highlight DiagnosticVirtualTextWarn guifg=#414868
--   highlight DiagnosticVirtualTextHint guifg=#414868
--   highlight DiagnosticVirtualTextInfo guifg=#414868
-- ]]
