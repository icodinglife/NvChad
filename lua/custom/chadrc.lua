-- Just an example, supposed to be placed in /lua/custom/

local M = {}

local userPlugins = require "custom.plugins"
local userOverride = require "custom.plugins.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.plugins = {
  -- options = {
    -- lspconfig = {
    --   setup_lspconfig = "custom.plugins.lspconfig",
    -- }
  -- },
  override = userOverride,
  user = userPlugins
}

M.options = {
  user = function()
    require "custom.options"
  end,
}

M.ui = {
  -- theme = "blossom",
}

M.mappings = require "custom.mappings"

return M
