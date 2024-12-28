---@class Nordify.Palette.PolarNight
---@field origin string alias for nord 0
---@field bright string alias for nord 1
---@field brighter string alias for nord 2
---@field brightest string alias for nord 3
---@field light string alias for nord 3 bright

---@class Nordify.Palette.SnowStorm
---@field origin string  alias for nord 4
---@field brighter string  alias for nord 5
---@field brightest string  alias for nord 6

---@class Nordify.Palette.Frost
---@field polar_water string alias for nord 7
---@field ice string alias for nord 8
---@field artic_water string alias for nord 9
---@field artic_ocean string alias for nord 10

---@class Nordify.Palette.Aurora
---@field red string alias for nord 11
---@field orange string alias for nord 12
---@field yellow string alias for nord 13
---@field green string alias for nord 14
---@field purple string alias for nord 15

---@class Nordify.Palette.Colors
---@field polar_night Nordify.Palette.PolarNight
---@field snow_storm Nordify.Palette.SnowStorm
---@field frost Nordify.Palette.Frost
---@field aurora Nordify.Palette.Aurora
---@field none string

local colors = {
    polar_night = {
        origin = "#2E3440", -- Nord 0
        bright = "#3B4252", -- Nord 1
        brighter = "#434C5E", -- Nord 2
        brightest = "#4C566A", -- Nord 3
        light = "#616E88", -- Nord 3 bright
    },
    snow_storm = {
        origin = "#D8DEE9", -- Nord 4
        brighter = "#E5E9F0", -- Nord 5
        brightest = "#ECEFF4", -- Nord 6
    },
    frost = {
        polar_water = "#8FBCBB", -- Nord 7
        ice = "#88C0D0", -- Nord 8
        artic_water = "#81A1C1", -- Nord 9
        artic_ocean = "#5E81AC", -- Nord 10
    },
    aurora = {
        red = "#BF616A", -- Nord 11
        orange = "#D08770", -- Nord 12
        yellow = "#EBCB8B", -- Nord 13
        green = "#A3BE8C", -- Nord 14
        purple = "#B48EAD", -- Nord 15
    },
    none = "NONE",
}

---@class Nordify.Palette: Nordify.Palette.Colors
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---
---@field fg0 string
---@field fg1 string
---@field fg2 string
---@field fg3 string
---@field fg4 string
---@field fg5 string
---@field fg6 string
---
---@field border0 string
---@field border1 string
---
---@field ac0 string
---@field ac1 string
---
---@field search string
---
---@field error string
---@field warning string
---@field info string
---@field hint string
---@field ok string
---
---@field git_add string
---@field git_change string
---@field git_delete string
---@field git_text string
---@field git_ignore string

---@type Nordify.Palette
local dark = vim.tbl_deep_extend("error", colors, {
    bg0 = colors.polar_night.origin,
    bg1 = colors.polar_night.bright,
    bg2 = colors.polar_night.brighter,
    bg3 = colors.polar_night.brightest,
    bg4 = colors.polar_night.light,

    fg0 = colors.snow_storm.origin,
    fg1 = colors.snow_storm.brighter,
    fg2 = colors.snow_storm.brightest,
    fg3 = colors.polar_night.light,
    fg4 = colors.polar_night.brightest,
    fg5 = colors.polar_night.brighter,
    fg6 = colors.polar_night.bright,

    border0 = colors.polar_night.bright,
    border1 = colors.polar_night.brightest,

    ac0 = colors.frost.ice,
    ac1 = colors.frost.artic_water,

    search = colors.frost.ice,

    error = colors.aurora.red,
    warning = colors.aurora.yellow,
    info = colors.frost.ice,
    hint = colors.frost.artic_water,
    ok = colors.aurora.green,

    git_add = colors.aurora.green,
    git_change = colors.aurora.yellow,
    git_delete = colors.aurora.red,
    git_text = colors.frost.artic_water,
    git_ignore = colors.polar_night.light,
})

---@type Nordify.Palette
local light = vim.tbl_deep_extend("error", colors, {
    editor_background = colors.snow_storm.brightest,
    editor_foreground = colors.polar_night.origin,

    ui_background = colors.snow_storm.brighter,
    ui_foreground = colors.polar_night.origin,

    popup_background = colors.snow_storm.origin,
    popup_foreground = colors.polar_night.origin,

    border_primary = colors.snow_storm.brighter,
    border_secondary = colors.polar_night.bright,

    line_number_active = colors.polar_night.origin,
    line_number_inactive = colors.polar_night.bright,

    cursor_line_background = colors.snow_storm.brighter,
    cursor_column_background = colors.snow_storm.brighter,

    search_primary = colors.frost.polar_water,
    search_secondary = colors.frost.artic_water,

    visual_selection = colors.snow_storm.origin,

    indent_guide = colors.snow_storm.origin,
    whitespace = colors.snow_storm.origin,

    foldtext = colors.polar_night.brighter,

    menu_selection = colors.snow_storm.origin,
    menu_background = colors.snow_storm.brighter,
    menu_foreground = colors.polar_night.origin,

    diagnostic_error = colors.aurora.red,
    diagnostic_warning = colors.aurora.yellow,
    diagnostic_info = colors.frost.polar_water,
    diagnostic_hint = colors.frost.artic_water,

    diff_add = colors.aurora.yellow,
    diff_change = colors.aurora.green,
    diff_delete = colors.aurora.red,
})

---@type table<Nordify.Theme, Nordify.Palette>
local palettes = {
    dark = dark,
    light = light,
}

if vim.g.on_nordify_palettes ~= nil and type(vim.g.on_nordify_palettes) == "function" then
    vim.g.on_nordify_palette(colors)
end

return palettes
