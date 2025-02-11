local M = {}
local utils = require("nordify.utils")

M.url = "https://github.com/rcarriga/nvim-dap-ui"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        DapUIStop = { fg = c.aurora.red },
        DapUIType = { fg = c.aurora.purple },
        DapUIScope = { fg = c.frost.ice },
        DapUISource = { fg = c.aurora.purple },
        DapUIThread = { fg = c.aurora.green },
        DapUIRestart = { fg = c.aurora.green },
        DapUIStepOut = { fg = c.frost.ice },
        DapUIStepBack = { fg = c.frost.ice },
        DapUIStepInto = { fg = c.frost.ice },
        DapUIStepOver = { fg = c.frost.ice },
        DapUIPlayPause = { fg = c.aurora.green },
        DapUIDecoration = { fg = c.frost.ice },
        DapUILineNumber = { fg = c.frost.ice },
        DapUIFloatBorder = { fg = c.frost.ice },
        DapUIUnavailable = { fg = c.polar_night.light },
        DapUIWatchesEmpty = { fg = c.aurora.red },
        DapUIWatchesError = { fg = c.aurora.red },
        DapUIWatchesValue = { fg = c.aurora.green },
        DapUIStoppedThread = { fg = c.frost.ice },
        DapUIBreakpointsInfo = { fg = c.aurora.green },
        DapUIBreakpointsPath = { fg = c.frost.ice },
        DapUIBreakpointsDisabledLine = { fg = c.polar_night.light },
        DapUIModifiedValue = { fg = c.frost.ice, bold = true },
        DapUIBreakpointsCurrentLine = { fg = c.aurora.green, bold = true },
        DapUIWinSelect = { fg = c.frost.ice, bold = true },
        DapUIStopNC = { fg = utils.darken(c, c.aurora.red, 0.6), bg = c.bg0 },
        DapUIRestartNC = { fg = utils.darken(c, c.aurora.green, 0.6), bg = c.bg0 },
        DapUIStepOutNC = { fg = utils.darken(c, c.frost.ice, 0.6), bg = c.bg0 },
        DapUIStepBackNC = { fg = utils.darken(c, c.frost.ice, 0.6), bg = c.bg0 },
        DapUIStepIntoNC = { fg = utils.darken(c, c.frost.ice, 0.6), bg = c.bg0 },
        DapUIStepOverNC = { fg = utils.darken(c, c.frost.ice, 0.6), bg = c.bg0 },
        DapUIPlayPauseNC = { fg = utils.darken(c, c.aurora.green, 0.6), bg = c.bg0 },
        DapUIUnavailableNC = { fg = c.polar_night.brightest, bg = c.bg0 },
        DapUIEndofBuffer = { fg = c.polar_night.brightest, bg = c.bg0 },
    }
end

return M
