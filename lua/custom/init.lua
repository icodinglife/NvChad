-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
vim.cmd([[ autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'nvimtree') | q | endif ]])