local theme = require("konoha.theme")

local M = {}

M.load = function()
  vim.cmd("hi clear")
  vim.cmd("set bg&")
  vim.cmd("hi clear")
  theme = theme.setup()

  M.set_highlights(theme.highlights)
end

function M.set_highlights(highlights)
  for group, colors in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

return M
