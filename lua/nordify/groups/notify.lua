local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type Nordify.HighlightsFn
function M.get(c)
    local utils = require("nordify.utils")
    return {
        NotifyERRORBorder = { fg = utils.darken(c, c.aurora.red, 0.5) },
        NotifyERRORIcon = { fg = c.aurora.red },
        NotifyERRORTitle = { fg = c.aurora.red },

        NotifyWARNBorder = { fg = utils.darken(c, c.aurora.yellow, 0.5) },
        NotifyWARNIcon = { fg = c.aurora.yellow },
        NotifyWARNTitle = { fg = c.aurora.yellow },

        NotifyINFOBorder = { fg = utils.darken(c, c.frost.artic_water, 0.5) },
        NotifyINFOIcon = { fg = c.frost.artic_water },
        NotifyINFOTitle = { fg = c.frost.artic_water },

        NotifyDEBUGBorder = { fg = c.polar_night.bright },
        NotifyDEBUGIcon = { fg = c.snow_storm.origin },
        NotifyDEBUGTitle = { fg = c.snow_storm.origin },

        NotifyTRACEBorder = { fg = utils.darken(c, c.aurora.purple, 0.5) },
        NotifyTRACEIcon = { fg = c.aurora.purple },
        NotifyTRACETitle = { fg = c.aurora.purple },

        NotifyBackground = { bg = c.polar_night.origin },
    }
end

return M
