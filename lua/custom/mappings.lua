local M = {}

M.general = {
  i = {

  },
  n = {
      -- Windows split
      ["<leader>sv"] = { "<cmd> :vsp<CR>", "vertical windows" },
      ["<leader>sh"] = { "<cmd> :sp<CR>", "horizontal windows" },
      ["<leader>sc"] = { "<C-w>c", "close current windows" },
      ["<leader>so"] = { "<C-w>o", "close other windows" },
      -- windows size
      ["<leader>mh"] = { "<cmd> vertical resize +2<CR>", "vertical resize left" },
      ["<leader>ml"] = { "<cmd> vertical resize -2<CR>", "vertical resize right" },
      ["<leader>mj"] = { "<cmd> resize -2<CR>", "horizontal resize down" },
      ["<leader>mk"] = { "<cmd> resize +2<CR>", "horizontal resize up" },
      ["<leader>m="] = { "<C-w>=", "average windows" },
  },
  t = {
    -- Terminal Jump
    --["<C-h>"] = { termcodes "<C-\\><C-N><C-w>h", "   jump terminal left" },
    --["<C-j>"] = { termcodes "<C-\\><C-N><C-w>j", "   jump terminal down" },
    --["<C-k>"] = { termcodes "<C-\\><C-N><C-w>k", "   jump terminal up" },
    --["<C-l>"] = { termcodes "<C-\\><C-N><C-w>l", "   jump terminal right" },
    -- Terminal size
    ["<C-Left>"] = { "<cmd> vertical resize +2<CR>", "vertical resize left" },
    ["<C-Right>"] = { "<cmd> vertical resize -2<CR>", "vertical resize right" },
    ["<C-Down>"] = { "<cmd> resize -2<CR>", "horizontal resize down" },
    ["<C-Up>"] = { "<cmd> resize +2<CR>", "horizontal resize up" },
    ["<C-=>"] = { "<C-w>=", "average windows" },
 },
}

M.telescope = {
  n = {
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
  }
}

M.lspconfig = {
  n = {
    ["gh"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "   lsp hover",
    },
    ["gc"] = {
      function()
         vim.lsp.buf.incoming_calls()
      end,
      "lsp call hierarchy"
   },
   ["gd"] = {"<cmd> Trouble lsp_definitions<CR>", "lsp definitions"},
   ["gi"] = {"<cmd> Trouble lsp_implementations<CR>", "lsp implementations"},
   ["gr"] = {"<cmd> Trouble lsp_references<CR>", "lsp references"},
   ["<leader>rn"] = { "<cmd> Lspsaga rename<CR>", " lsp rename" },
  }
}

return M
