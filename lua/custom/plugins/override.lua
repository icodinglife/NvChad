return {
  ["kyazdani42/nvim-tree.lua"] = {
    git = {
      enable = true
    }
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    ensure_installed = "all",
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  }
}