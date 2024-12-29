---@class Nordify.Palette.PolarNight
---@field origin string alias for nord 0
---@field bright string alias for nord 1
---@field brighter string alias for nord 2
---@field brightest string alias for nord 3
---@field light string Not in nord palette

---@class Nordify.Palette.SnowStorm
---@field origin string  alias for nord 4
---@field brighter string  alias for nord 5
---@field brightest string  alias for nord 6
---@field dark string Not in nord palette

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
        dark = "#ADB2BA",
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
---
---@field fg0 string
---@field fg1 string
---@field fg2 string
---@field fg3 string
---@field fg4 string
---
---@field border0 string
---@field border1 string
---
---@field nontext string
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

    fg0 = colors.snow_storm.origin,
    fg1 = colors.snow_storm.brighter,
    fg2 = colors.snow_storm.brightest,
    fg3 = colors.polar_night.light,
    fg4 = colors.polar_night.brightest,

    nontext = colors.polar_night.brighter,

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
    bg0 = colors.snow_storm.brightest,
    bg1 = colors.snow_storm.brighter,
    bg2 = colors.snow_storm.origin,
    bg3 = colors.snow_storm.dark,

    fg0 = colors.polar_night.brighter,
    fg1 = colors.polar_night.bright,
    fg2 = colors.polar_night.origin,
    fg3 = colors.polar_night.light,
    fg4 = colors.snow_storm.dark,

    nontext = colors.polar_night.light,

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

---@type table<Nordify.Theme, Nordify.Palette>
local palettes = {
    dark = dark,
    light = light,
}

if vim.g.on_nordify_palettes ~= nil and type(vim.g.on_nordify_palettes) == "function" then
    vim.g.on_nordify_palette(colors)
end

return palettes
