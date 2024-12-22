local utils = require("nordify.utils")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type Nordify.HighlightsFn
function M.get(c, config)
    local current_hi = vim.tbl_extend("force", { bg = c.polar_night.brighter }, config.styles.bufferline.current)
    local global_bg = utils.make_global_bg()
    return {
        BufferTabpageFill = { bg = global_bg, fg = c.polar_night.origin },
        BufferCurrent = current_hi,
        BufferCurrentIndex = current_hi,
        BufferCurrentMod = vim.tbl_extend(
            "force",
            { bg = c.polar_night.brighter, fg = c.aurora.yellow },
            config.styles.bufferline.modified
        ),
        BufferCurrentSign = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
        BufferCurrentTarget = vim.tbl_extend(
            "force",
            { bg = c.polar_night.brighter, fg = c.aurora.red, bold = true },
            config.styles.bufferline.current
        ),
        BufferCurrentHINT = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
        BufferCurrentINFO = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
        BufferCurrentWARN = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
        BufferCurrentERROR = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
        BufferVisible = { bg = c.polar_night.bright },
        BufferVisibleIndex = { bg = c.polar_night.bright },
        BufferVisibleMod = vim.tbl_extend(
            "force",
            { bg = c.polar_night.bright, fg = c.aurora.yellow },
            config.styles.bufferline.modified
        ),
        BufferVisibleSign = { bg = c.polar_night.bright, fg = c.frost.artic_water },
        BufferVisibleTarget = { bg = c.polar_night.bright, fg = c.aurora.red, bold = true },
        BufferVisibleHINT = { bg = c.polar_night.bright, fg = c.frost.artic_water },
        BufferVisibleINFO = { bg = c.polar_night.bright, fg = c.frost.ice },
        BufferVisibleWARN = { bg = c.polar_night.bright, fg = c.aurora.yellow },
        BufferVisibleERROR = { bg = c.polar_night.bright, fg = c.aurora.red },
        BufferInactive = { bg = global_bg, fg = c.polar_night.light },
        BufferInactiveIndex = { bg = global_bg, fg = c.polar_night.light },
        BufferInactiveMod = vim.tbl_extend(
            "force",
            { bg = global_bg, fg = utils.darken(c, c.aurora.yellow, 0.4) },
            config.styles.bufferline.modified
        ),
        BufferInactiveSign = { bg = global_bg, fg = c.polar_night.origin },
        BufferInactiveTarget = { bg = global_bg, fg = c.aurora.red, bold = true },
        BufferInactiveHINT = { bg = global_bg, fg = utils.darken(c, c.frost.artic_water, 0.4) },
        BufferInactiveINFO = { bg = global_bg, fg = utils.darken(c, c.frost.ice, 0.4) },
        BufferInactiveWARN = { bg = global_bg, fg = utils.darken(c, c.aurora.yellow, 0.4) },
        BufferInactiveERROR = { bg = global_bg, fg = utils.darken(c, c.aurora.red, 0.4) },
        BufferTabpages = { bg = global_bg, fg = c.none },
        BufferTabpage = { bg = global_bg },
    }
end

return M
