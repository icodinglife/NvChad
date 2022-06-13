-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
-- when nvim-tree create file edit new file
require("nvim-tree.events").on_file_created(function(file)
    vim.cmd("edit " .. file.fname)
 end)

-- close window when all buffer closed
vim.cmd([[ autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'nvimtree') | q | endif ]])