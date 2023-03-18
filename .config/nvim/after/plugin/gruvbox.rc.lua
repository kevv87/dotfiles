local status, n = pcall(require, 'gruvbox')
if (not status) then return end

n.setup({ commit_italics = true })

vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])
