-- basics
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.cmd("nohlsearch")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.shiftround = true
vim.opt.updatetime = 100
vim.opt.cursorline = true
if vim.fn.has("termguicolors") == 1 then
	vim.opt.termguicolors = true
end

-- searchv
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- tabs
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.smartindent = true

vim.opt.list = true
vim.opt.listchars = {
	tab = "▸ ",
	trail = "▫",
}

vim.opt.mouse = "a"
vim.opt.encoding = "utf-8"
vim.opt.guifont = "Cascadia_Code_PL:h12"
-- vim.opt.guifont = 'DejaVu_Sans_Mono_Font'
-- vim.opt.guifont = 'Fira_Code_Font'
vim.opt.showmatch = true
vim.opt.autowrite = true
vim.opt.formatoptions = ""
vim.opt.scrolloff = 10
vim.opt.tw = 0
vim.opt.backspace = "indent,eol,start"
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.laststatus = 2
vim.opt.autochdir = true
vim.opt.clipboard = "unnamedplus"
vim.opt.lazyredraw = true
vim.opt.compatible = false
vim.opt.shell = "/bin/bash"
vim.opt.signcolumn = "yes"
vim.opt.backup = false
vim.opt.writebackup = false

-- presistent undo
vim.bo.undofile = true
vim.opt.undodir = vim.fn.expand("~/.config/nvim/.tmp/undo")

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

-- Disables automatic commenting on newline
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "*" },
	command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
})

-- Automatically deletes all trailing whitespace and newlines at end of file on save
-- vim.api.nvim_create_autocmd(
--   { "BufWritePre" },
--   {
--     pattern = { "*" },
--     command = "%s/\s\+$//e"
--   }
-- )
-- vim.api.nvim_create_autocmd(
--   { "BufWritePre" },
--   {
--     pattern = { "*" },
--     command = "%s/\n\+\%$//e"
--   }
-- )
-- vim.api.nvim_create_autocmd(
--   { "BufWritePre" },
--   {
--     pattern = { "*.[ch]" },
--     command = "%s/\%$/\r/e"
--   }
-- )

-- Runs a script that cleans out tex build files whenever I close out of a .tex file
vim.api.nvim_create_autocmd({ "VimLeave" }, {
	pattern = { "*.tex" },
	command = "!texclear %",
})

-- filetype for plantuml
vim.api.nvim_create_autocmd({ "BufNewFile,BufRead" }, {
	pattern = { "*.puml" },
	command = "set filetype=plantuml",
})
