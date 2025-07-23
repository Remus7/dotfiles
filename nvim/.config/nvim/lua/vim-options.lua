vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number")

vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.o.undofile = true

vim.cmd("set clipboard=unnamedplus")

vim.o.conceallevel = 0
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.conceallevel = 2               -- show conceal in markdown for obsidian
  end,
})
