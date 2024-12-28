local utils = require("nordify.utils")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type Nordify.HighlightsFn
function M.get(c, config)
    local current_hi = vim.tbl_extend("force", { bg = c.bg2 }, config.styles.bufferline.current)
    return {
        BufferTabpageFill = { bg = c.bg0, fg = c.fg0 },
        BufferCurrent = current_hi,
        BufferCurrentIndex = current_hi,
        BufferCurrentMod = vim.tbl_extend(
            "force",
            { bg = c.bg2, fg = c.aurora.yellow },
            config.styles.bufferline.modified
        ),
        BufferCurrentSign = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
        BufferCurrentTarget = vim.tbl_extend(
            "force",
            { bg = c.bg2, fg = c.aurora.red, bold = true },
            config.styles.bufferline.current
        ),
        BufferCurrentHINT = vim.tbl_extend("force", current_hi, { fg = c.hint }),
        BufferCurrentINFO = vim.tbl_extend("force", current_hi, { fg = c.info }),
        BufferCurrentWARN = vim.tbl_extend("force", current_hi, { fg = c.warning }),
        BufferCurrentERROR = vim.tbl_extend("force", current_hi, { fg = c.error }),
        BufferVisible = { bg = c.bg1 },
        BufferVisibleIndex = { bg = c.bg1 },
        BufferVisibleMod = vim.tbl_extend(
            "force",
            { bg = c.bg1, fg = c.aurora.yellow },
            config.styles.bufferline.modified
        ),
        BufferVisibleSign = { bg = c.bg1, fg = c.frost.artic_water },
        BufferVisibleTarget = { bg = c.bg1, fg = c.aurora.red, bold = true },
        BufferVisibleHINT = { bg = c.bg1, fg = c.hint },
        BufferVisibleINFO = { bg = c.bg1, fg = c.info },
        BufferVisibleWARN = { bg = c.bg1, fg = c.warning },
        BufferVisibleERROR = { bg = c.bg1, fg = c.error },
        BufferInactive = { bg = c.bg0, fg = c.fg3 },
        BufferInactiveIndex = { bg = c.bg0, fg = c.fg3 },
        BufferInactiveMod = vim.tbl_extend(
            "force",
            { bg = c.bg0, fg = utils.darken(c, c.aurora.yellow, 0.4) },
            config.styles.bufferline.modified
        ),
        BufferInactiveSign = { bg = c.bg0, fg = c.bg0 },
        BufferInactiveTarget = { bg = c.bg0, fg = c.aurora.red, bold = true },
        BufferInactiveHINT = { bg = c.bg0, fg = utils.darken(c, c.hint, 0.4) },
        BufferInactiveINFO = { bg = c.bg0, fg = utils.darken(c, c.info, 0.4) },
        BufferInactiveWARN = { bg = c.bg0, fg = utils.darken(c, c.warning, 0.4) },
        BufferInactiveERROR = { bg = c.bg0, fg = utils.darken(c, c.error, 0.4) },
        BufferTabpages = { bg = c.bg0, fg = c.none },
        BufferTabpage = { bg = c.bg0 },
    }
end

return M
