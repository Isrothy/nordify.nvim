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

---@class Nordify.InternalPalette
---@field nord0 string
---@field nord1 string
---@field nord2 string
---@field nord3 string
---@field nord3_bright string
---@field nord4 string
---@field nord5 string
---@field nord6 string
---@field nord7 string
---@field nord8 string
---@field nord9 string
---@field nord10 string
---@field nord11 string
---@field nord12 string
---@field nord13 string
---@field nord14 string
---@field nord15 string
local internalPalette = {
    nord0 = "#2E3440",
    nord1 = "#3B4252",
    nord2 = "#434C5E",
    nord3 = "#4C566A",
    nord3_bright = "#616E88",
    nord4 = "#D8DEE9",
    nord5 = "#E5E9F0",
    nord6 = "#ECEFF4",
    nord7 = "#8FBCBB",
    nord8 = "#88C0D0",
    nord9 = "#81A1C1",
    nord10 = "#5E81AC",
    nord11 = "#BF616A",
    nord12 = "#D08770",
    nord13 = "#EBCB8B",
    nord14 = "#A3BE8C",
    nord15 = "#B48EAD",
    none = "NONE",
}

---@class Nordify.Palette: Nordify.InternalPalette
---@field polar_night Nordify.Palette.PolarNight
---@field snow_storm Nordify.Palette.SnowStorm
---@field frost Nordify.Palette.Frost
---@field aurora Nordify.Palette.Aurora
---@field internal fun():Nordify.InternalPalette

---@type Nordify.Palette
---@diagnostic disable-next-line: missing-fields
local palette = {}

setmetatable(palette, {
    __index = function(_, key)
        if internalPalette[key] then
            return internalPalette[key]
        end
    end,
    __newindex = function(_, key, value)
        if internalPalette[key] then
            internalPalette[key] = value
        else
            rawset(palette, key, value)
        end
    end,
})

---@diagnostic disable-next-line: missing-fields
palette.polar_night = {}
---@diagnostic disable-next-line: missing-fields
palette.snow_storm = {}
---@diagnostic disable-next-line: missing-fields
palette.frost = {}
---@diagnostic disable-next-line: missing-fields
palette.aurora = {}

local function set_alias(table, mapping)
    setmetatable(table, {
        __index = function(_, key)
            local nord_key = mapping[key]
            return nord_key and palette["nord" .. nord_key]
        end,
        __newindex = function(_, key, value)
            local nord_key = mapping[key]
            if nord_key then
                palette["nord" .. nord_key] = value
            else
                rawset(table, key, value)
            end
        end,
    })
end

set_alias(palette.polar_night, {
    origin = "0",
    bright = "1",
    brighter = "2",
    brightest = "3",
    light = "3_bright",
})

set_alias(palette.snow_storm, {
    origin = "4",
    brighter = "5",
    brightest = "6",
})

set_alias(palette.frost, {
    polar_water = "7",
    ice = "8",
    artic_water = "9",
    artic_ocean = "10",
})

set_alias(palette.aurora, {
    red = "11",
    orange = "12",
    yellow = "13",
    green = "14",
    purple = "15",
})

function palette:internal()
    return internalPalette
end

if vim.g.on_nordify_palette ~= nil and type(vim.g.on_nordify_palette) == "function" then
    vim.g.on_nordify_palette(palette)
end

return palette
