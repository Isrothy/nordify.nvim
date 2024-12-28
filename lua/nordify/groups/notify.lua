local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type Nordify.HighlightsFn
function M.get(c)
    local utils = require("nordify.utils")
    return {
        NotifyERRORBorder = { fg = utils.darken(c, c.error, 0.5) },
        NotifyERRORIcon = { fg = c.error },
        NotifyERRORTitle = { fg = c.error },

        NotifyWARNBorder = { fg = utils.darken(c, c.warning, 0.5) },
        NotifyWARNIcon = { fg = c.warning },
        NotifyWARNTitle = { fg = c.warning },

        NotifyINFOBorder = { fg = utils.darken(c, c.info, 0.5) },
        NotifyINFOIcon = { fg = c.info },
        NotifyINFOTitle = { fg = c.info },

        NotifyDEBUGBorder = { fg = c.border0 },
        NotifyDEBUGIcon = { fg = c.fg0 },
        NotifyDEBUGTitle = { fg = c.fg0 },

        NotifyTRACEBorder = { fg = utils.darken(c, c.aurora.purple, 0.5) },
        NotifyTRACEIcon = { fg = c.aurora.purple },
        NotifyTRACETitle = { fg = c.aurora.purple },

        NotifyBackground = { bg = c.bg0 },
    }
end

return M
