local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type Nordify.HighlightsFn
M.get = function(c, config)
    local utils = require("nordify.utils")
    return {
        TelescopeBorder = { fg = c.polar_night.light, bg = utils.make_transparent_bg(c, config) },
        TelescopeTitle = { fg = c.snow_storm.origin, bold = true },
        TelescopePromptCounter = { fg = c.polar_night.light },
        TelescopeMatching = { fg = c.frost.ice, bold = true },
    }
end

return M
