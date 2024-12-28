local M = {}

---@param theme Nordify.Theme
M.get = function(theme)
    local c = require("nordify.palette")[theme]
    return function()
        local config = require("nordify.config")
        local utils = require("nordify.utils")
        local current_hi =
            vim.tbl_extend("force", { bg = c.bg2, italic = false, bold = false }, config.styles.bufferline.current)
        return {
            fill = { bg = c.bg0, fg = c.fg3 },
            background = { bg = c.bg0, fg = c.fg3 },
            numbers = { bg = c.bg0 },
            close_button = { bg = c.bg0 },
            separator = { bg = c.bg0, fg = c.bg0 },
            duplicate = { bg = c.bg0 },
            modified = vim.tbl_extend(
                "force",
                { bg = c.bg0, fg = utils.darken(c, c.aurora.yellow, 0.4) },
                config.styles.bufferline.modified
            ),
            pick = { bg = c.bg0, bold = true, italic = false },
            diagnostic = { bg = c.bg0 },
            hint = { bg = c.bg0, fg = c.hint },
            hint_diagnostic = { bg = c.bg0, fg = c.hint },
            info = { bg = c.bg0, fg = c.info },
            info_diagnostic = { bg = c.bg0, fg = c.info },
            warning = { bg = c.bg0, fg = c.warning },
            warning_diagnostic = { bg = c.bg0, fg = c.warning },
            error_diagnostic = { bg = c.bg0, fg = c.error },
            error = { bg = c.bg0, fg = c.error },
            buffer_selected = current_hi,
            numbers_selected = current_hi,
            close_button_selected = current_hi,
            modified_selected = vim.tbl_extend(
                "force",
                { bg = c.bg2, fg = c.aurora.yellow },
                config.styles.bufferline.modified
            ),
            separator_selected = { bg = c.bg2, fg = c.bg0 },
            duplicate_selected = current_hi,
            pick_selected = vim.tbl_extend("force", current_hi, { bold = true }),
            indicator_selected = { fg = c.ac1, bg = c.bg2 },
            diagnostic_selected = current_hi,
            hint_selected = vim.tbl_extend("force", current_hi, { fg = c.hint }),
            hint_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.hint }),
            info_selected = vim.tbl_extend("force", current_hi, { fg = c.info }),
            info_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.info }),
            warning_selected = vim.tbl_extend("force", current_hi, { fg = c.warning }),
            warning_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.warning }),
            error_selected = vim.tbl_extend("force", current_hi, { fg = c.error }),
            error_diagnostic_selected = vim.tbl_extend("force", current_hi, { fg = c.error }),
            buffer_visible = { bg = c.bg1 },
            numbers_visible = { bg = c.bg1 },
            close_button_visible = { bg = c.bg1 },
            modified_visible = vim.tbl_extend(
                "force",
                { bg = c.bg1, fg = c.aurora.yellow },
                config.styles.bufferline.modified
            ),
            separator_visible = { bg = c.bg0, fg = c.bg0 },
            duplicate_visible = { bg = c.bg1 },
            pick_visible = { bg = c.bg1, bold = true, italic = false },
            diagnostic_visible = { bg = c.bg1 },
            hint_visible = { bg = c.bg1, fg = c.hint },
            hint_diagnostic_visible = { bg = c.bg1, fg = c.hint },
            info_visible = { bg = c.bg1, fg = c.info },
            info_diagnostic_visible = { bg = c.bg1, fg = c.info },
            warning_visible = { bg = c.bg1, fg = c.warning },
            warning_diagnostic_visible = { bg = c.bg1, fg = c.warning },
            error_visible = { bg = c.bg1, fg = c.error },
            error_diagnostic_visible = { bg = c.bg1, fg = c.error },
            tab = { fg = c.fg0, bg = c.bg0 },
            tab_selected = { fg = c.fg0, bg = c.bg2 },
            tab_separator = { fg = c.bg0, bg = c.bg0 },
            tab_separator_selected = { fg = c.aurora.purple, bg = c.bg2 },
            tab_close = { fg = c.fg0, bg = c.bg0 },
        }
    end
end
return M
