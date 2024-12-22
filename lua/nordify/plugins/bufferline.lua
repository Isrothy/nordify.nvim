local M = {}

M.get = function()
    local config = require("nordify.config")
    local c = require("nordify.palette")
    local utils = require("nordify.utils")
    local current_hi = vim.tbl_extend(
        "force",
        { bg = c.polar_night.brighter, italic = false, bold = false },
        config.styles.bufferline.current
    )
    return {
        fill = { bg = c.polar_night.origin, fg = c.polar_night.light },
        background = { bg = c.polar_night.origin, fg = c.polar_night.light },
        numbers = { bg = c.polar_night.origin },
        close_button = { bg = c.polar_night.origin },
        separator = { bg = c.polar_night.origin, fg = c.polar_night.origin },
        duplicate = { bg = c.polar_night.origin },
        modified = vim.tbl_extend(
            "force",
            { bg = c.polar_night.origin, fg = utils.darken(c, c.aurora.yellow, 0.4) },
            config.styles.bufferline.modified
        ),
        pick = { bg = c.polar_night.origin, bold = true, italic = false },
        diagnostic = { bg = c.polar_night.origin },
        hint = { bg = c.polar_night.origin, fg = c.frost.artic_water },
        hint_diagnostic = { bg = c.polar_night.origin, fg = c.frost.artic_water },
        info = { bg = c.polar_night.origin, fg = c.frost.ice },
        info_diagnostic = { bg = c.polar_night.origin, fg = c.frost.ice },
        warning = { bg = c.polar_night.origin, fg = c.aurora.yellow },
        warning_diagnostic = { bg = c.polar_night.origin, fg = c.aurora.yellow },
        error_diagnostic = { bg = c.polar_night.origin, fg = c.aurora.red },
        error = { bg = c.polar_night.origin, fg = c.aurora.red },
        buffer_selected = current_hi,
        numbers_selected = current_hi,
        close_button_selected = current_hi,
        modified_selected = vim.tbl_extend(
            "force",
            { bg = c.polar_night.brighter, fg = c.aurora.yellow },
            config.styles.bufferline.modified
        ),
        separator_selected = { bg = c.polar_night.brighter, fg = c.polar_night.origin },
        duplicate_selected = current_hi,
        pick_selected = vim.tbl_extend("force", current_hi, { bold = true }),
        indicator_selected = { fg = c.frost.artic_water, bg = c.polar_night.brighter },
        diagnostic_selected = current_hi,
        hint_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
        hint_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.artic_water }),
        info_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
        info_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.frost.ice }),
        warning_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
        warning_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.yellow }),
        error_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
        error_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.aurora.red }),
        buffer_visible = { bg = c.polar_night.bright },
        numbers_visible = { bg = c.polar_night.bright },
        close_button_visible = { bg = c.polar_night.bright },
        modified_visible = vim.tbl_extend(
            "force",
            { bg = c.polar_night.bright, fg = c.aurora.yellow },
            config.styles.bufferline.modified
        ),
        separator_visible = { bg = c.polar_night.origin, fg = c.polar_night.origin },
        duplicate_visible = { bg = c.polar_night.bright },
        pick_visible = { bg = c.polar_night.bright, bold = true, italic = false },
        diagnostic_visible = { bg = c.polar_night.bright },
        hint_visible = { bg = c.polar_night.bright, fg = c.frost.artic_water },
        hint_diagnostic_visible = { bg = c.polar_night.bright, fg = c.frost.artic_water },
        info_visible = { bg = c.polar_night.bright, fg = c.frost.ice },
        info_diagnostic_visible = { bg = c.polar_night.bright, fg = c.frost.ice },
        warning_visible = { bg = c.polar_night.bright, fg = c.aurora.yellow },
        warning_diagnostic_visible = { bg = c.polar_night.bright, fg = c.aurora.yellow },
        error_visible = { bg = c.polar_night.bright, fg = c.aurora.red },
        error_diagnostic_visible = { bg = c.polar_night.bright, fg = c.aurora.red },
        tab = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
        tab_selected = { fg = c.snow_storm.origin, bg = c.polar_night.brighter },
        tab_separator = { fg = c.polar_night.origin, bg = c.polar_night.origin },
        tab_separator_selected = { fg = c.aurora.purple, bg = c.polar_night.brighter },
        tab_close = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
    }
end
return M