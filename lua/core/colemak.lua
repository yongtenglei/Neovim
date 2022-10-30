vim.keymap.set("n", "l", "u", { noremap = true, silent = true })
vim.keymap.set("n", "k", "i", { noremap = true, silent = true })
vim.keymap.set("n", "u", "k", { noremap = true, silent = true })
vim.keymap.set("n", "n", "h", { noremap = true, silent = true })
vim.keymap.set("n", "e", "j", { noremap = true, silent = true })
vim.keymap.set("n", "i", "l", { noremap = true, silent = true })
vim.keymap.set("n", "U", "5k", { noremap = true, silent = true })
vim.keymap.set("n", "E", "5j", { noremap = true, silent = true })
vim.keymap.set("n", "N", "0", { noremap = true, silent = true })
vim.keymap.set("n", "I", "$", { noremap = true, silent = true })
vim.keymap.set("n", "dI", "d$", { noremap = true, silent = true })
vim.keymap.set("n", "yI", "y$", { noremap = true, silent = true })
vim.keymap.set("n", "dN", "d0", { noremap = true, silent = true })

vim.keymap.set("v", "u", "k", { noremap = true, silent = true })
vim.keymap.set("v", "n", "h", { noremap = true, silent = true })
vim.keymap.set("v", "e", "j", { noremap = true, silent = true })
vim.keymap.set("v", "i", "l", { noremap = true, silent = true })
vim.keymap.set("v", "U", "5k", { noremap = true, silent = true })
vim.keymap.set("v", "E", "5j", { noremap = true, silent = true })

vim.cmd([[
  sunmap u
  sunmap n
  sunmap e
  sunmap i
  sunmap U
  sunmap E
  sunmap r
]])
