vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- Provider
vim.g['python3_host_prog'] = vim.fn.expand("~/.pyenv/shims/python")
vim.g['ruby_host_prog'] = vim.fn.expand("~/.rbenv/shims/ruby")

-- Better tabbing: Vmap for maintain Visual Mode after shifting > and <
vim.keymap.set('v', '<', '<gv', {noremap = true})
vim.keymap.set('v', '>', '>gv', {noremap = true})
-- vnoremap < <gv
-- vnoremap > >gv


-- Alternate way to save and quit
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true})
vim.keymap.set('n', '<C-Q>', ':wq!<CR>', {noremap = true})
-- nnoremap <C-s> :w<CR>
-- nnoremap <C-Q> :wq!<CR>


-- Use control-c instead of escape
-- vim.keymap.set('n', '<C-c>', '<ESC>', {noremap = true})

-- Move visual block
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap=true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap=true })
-- vnoremap J :m '>+1<CR>gv=gv
-- vnoremap K :m '<-2<CR>gv=gv


-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true})
-- nnoremap <C-h> <C-w>h
-- nnoremap <C-j> <C-w>j
-- nnoremap <C-k> <C-w>k
-- nnoremap <C-l> <C-w>l


-- search will center on the line it's found in.
vim.keymap.set('n', 'n', 'nzzzv', {noremap = true})
vim.keymap.set('n', 'N', 'nzzzv', {noremap = true})
-- nnoremap n nzzzv
-- nnoremap N nzzzv


-- Better o and O
-- nnoremap <Leader>o o<ESC>^Da
-- nnoremap <Leader>O O<ESC>^Da
vim.keymap.set('n', '<Leader>o', 'o<ESC>^Da', {noremap = true})
vim.keymap.set('n', '<Leader>O', 'O<ESC>^Da', {noremap = true})


-- no one is really happy until you have this shortcuts
-- cnoreabbrev W! w!
-- cnoreabbrev Q! q!
-- cnoreabbrev Qall! qall!
-- cnoreabbrev Wq wq
-- cnoreabbrev Wa wa
-- cnoreabbrev wQ wq
-- cnoreabbrev WQ wq
-- cnoreabbrev W w
-- cnoreabbrev Q q
-- cnoreabbrev Qall qall

-- remove trailing whitespaces
-- command! FixWhitespace :%s/\s\+$//e


-- You can't stop me
-- cmap w!! w !sudo tee %
-- cnoremap w!! execute 'silent! write !SUDO_ASKPASS=`which ssh-askpass` sudo tee % >/dev/null' <bar> edit!

