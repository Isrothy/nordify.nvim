local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type Nordify.HighlightsFn
M.get = function(c, config)
    local utils = require("nordify.utils")
    return {
        TelescopeBorder = { fg = c.border1, bg = utils.make_transparent_bg(c, config) },
        TelescopeTitle = { fg = c.fg0, bold = true },
        TelescopePromptCounter = { fg = c.fg3 },
        TelescopeMatching = { fg = c.ac0, bold = true },
    }
end

return M
