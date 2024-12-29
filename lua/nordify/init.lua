local M = {}

---@alias Nordify.Theme "dark"|"light"

---@param theme Nordify.Theme
M.set_colorscheme = function(theme)
    local config = require("nordify.config")
    local c = require("nordify.palette")[theme]
    local groups = require("nordify.groups").setup(c, config)

    vim.cmd([[ highlight clear ]])
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "nordify-" .. theme

    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    if config.terminal_colors then
        -- dark
        vim.g.terminal_color_0 = c.polar_night.bright
        vim.g.terminal_color_8 = c.polar_night.brightest

        -- light
        vim.g.terminal_color_7 = c.snow_storm.brighter
        vim.g.terminal_color_15 = c.snow_storm.brightest

        -- colors
        vim.g.terminal_color_1 = c.aurora.red
        vim.g.terminal_color_9 = c.aurora.red

        vim.g.terminal_color_2 = c.aurora.green
        vim.g.terminal_color_10 = c.aurora.green

        vim.g.terminal_color_3 = c.aurora.yellow
        vim.g.terminal_color_11 = c.aurora.yellow

        vim.g.terminal_color_4 = c.frost.artic_water
        vim.g.terminal_color_12 = c.frost.artic_water

        vim.g.terminal_color_5 = c.aurora.purple
        vim.g.terminal_color_13 = c.aurora.purple

        vim.g.terminal_color_6 = c.frost.ice
        vim.g.terminal_color_14 = c.frost.polar_water
    end
end

return M
