local M = {}

M.url = "https://github.com/OXY2DEV/markview.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    local utils = require("nordify.utils")
    return {
        MarkviewCode = { bg = c.bg1 },
        MarkviewInlineCode = { bg = c.bg1 },

        MarkviewHeading1 = { fg = c.aurora.green, bg = utils.blend(c.aurora.green, c.bg0, 0.1) },
        MarkviewHeading2 = { fg = c.aurora.yellow, bg = utils.blend(c.aurora.yellow, c.bg0, 0.1) },
        MarkviewHeading3 = { fg = c.aurora.purple, bg = utils.blend(c.aurora.purple, c.bg0, 0.1) },
        MarkviewHeading4 = { fg = c.frost.polar_water, bg = utils.blend(c.frost.polar_water, c.bg0, 0.1) },
        MarkviewHeading5 = { fg = c.frost.ice, bg = utils.blend(c.frost.ice, c.bg0, 0.1) },
        MarkviewHeading6 = { fg = c.frost.artic_ocean, bg = utils.blend(c.frost.artic_ocean, c.bg0, 0.1) },

        MarkviewHeading1Sign = { fg = c.aurora.green },
        MarkviewHeading2Sign = { fg = c.aurora.yellow },
        MarkviewHeading3Sign = { fg = c.aurora.purple },
        MarkviewHeading4Sign = { fg = c.frost.polar_water },
        MarkviewHeading5Sign = { fg = c.frost.ice },
        MarkviewHeading6Sign = { fg = c.frost.artic_ocean },
    }
end

return M
