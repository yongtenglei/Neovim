vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>rc', ":e ~/.config/nvim/init.vim <cr>")

vim.keymap.set('n', '=', 'nzz')
vim.keymap.set('n', '-', 'Nzz')
vim.keymap.set('n', '<leader><cr>', ':nohlsearch<cr>')


vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<c-u>', ':w<enter>')
vim.keymap.set('i', '<c-u>', ":esc")
vim.keymap.set('n', 'Q', ':q!<enter>')
vim.keymap.set('n', 's', '<nop>')
vim.keymap.set('v', 'Y', '"+y')
vim.keymap.set('n', '<', '<<')
vim.keymap.set('n', '>', '>>')
vim.keymap.set('n', '<leader>o', 'za', { noremap = true, silent = true })

vim.keymap.set('n', '<leader><leader>', '<Esc>/<++><CR>:nohlsearch<CR>4xi')
vim.keymap.set('n', '<leader>sc', ":set spell!<cr>")
vim.keymap.set('n', '<leader>sw', ":set wrap<cr>")

-- split screen
vim.keymap.set('n', 'su', ':set nosplitbelow<CR>:split<CR>:set splitbelow<CR>' )
vim.keymap.set('n', 'se', ':set splitbelow<CR>:split<CR>')
vim.keymap.set('n', 'sn', ':set nosplitright<CR>:vsplit<CR>:set splitright<CR>')
vim.keymap.set('n', 'si', ':set splitright<CR>:vsplit<CR>')
-- cursor jumper between screen
vim.keymap.set('n', '<leader>ww', '<c-w>W')
vim.keymap.set('n', '<leader>i', '<c-w>l')
vim.keymap.set('n', '<leader>u', '<c-w>k')
vim.keymap.set('n', '<leader>n', '<c-w>h')
vim.keymap.set('n', '<leader>e', '<c-w>j')
vim.keymap.set('n', 'qf', '<c-w>o')

-- set split screen preference
vim.keymap.set('n', 'sv', '<C-w>t<C-w>H')
vim.keymap.set('n', 'sh', '<C-w>t<C-w>K')
-- rotate screen
vim.keymap.set('n', 'srh', '<C-w>b<C-w>K')
vim.keymap.set('n', 'srv', '<C-w>b<C-w>H')

-- adjust window size
vim.keymap.set('n', '<up>', ':res +5<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<down>', ':res -5<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<left>', ':vertical resize+5<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<right>', ':vertical resize-5<cr>', { noremap = true, silent = true })


-- tab management
vim.keymap.set('n', 'tu', ':tabe<cr>')
vim.keymap.set('n', 'tn', ':-tabnext<cr>')
vim.keymap.set('n', 'ti', ':+tabnext<cr>')
-- move tabs
vim.keymap.set('n', 'tmn', ':-tabmove<cr>')
vim.keymap.set('n', 'tmi', ':+tabmove<cr>')

-- buffer switcher
vim.keymap.set('n', 'bn', ":bp<cr>")
vim.keymap.set('n', 'bi', ":bn<cr>")

-- quickfix and location fix
vim.keymap.set('n', 'co', ':copen<cr>' )
vim.keymap.set('n', 'cm', ':cnext<cr>' )
vim.keymap.set('n', 'ck', ':cprevious<cr>' )
vim.keymap.set('n', 'cc', ':cclose<cr>' )

vim.keymap.set('n', 'zo', ':lopen<cr>' )
vim.keymap.set('n', 'zm', ':lnext<cr>' )
vim.keymap.set('n', 'zk', ':lprevious<cr>' )
vim.keymap.set('n', 'zc', ':lclose<cr>' )

-- refersh buffer 
local function refreshBuf()
	vim.cmd('set noconfirm')
	vim.cmd('bufdo e !')
	vim.cmd('set confirm')
end
vim.keymap.set('n', '<leader>rb', refreshBuf)
