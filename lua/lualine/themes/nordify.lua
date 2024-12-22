local c = require("nordify.palette")

local M = {}

M.normal = {
    a = { fg = c.polar_night.bright, bg = c.frost.ice },
    b = { fg = c.snow_storm.brighter, bg = c.polar_night.bright },
    c = { fg = c.snow_storm.brighter, bg = c.polar_night.brighter },
}

M.insert = {
    a = { fg = c.polar_night.bright, bg = c.snow_storm.origin },
}

M.visual = {
    a = { fg = c.polar_night.bright, bg = c.frost.polar_water },
}

M.replace = {
    a = { fg = c.polar_night.bright, bg = c.aurora.yellow },
}

M.command = {
    a = { fg = c.polar_night.bright, bg = c.aurora.purple },
}

M.inactive = {
    a = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
    b = { fg = c.snow_storm.origin, bg = c.polar_night.origin },
    c = { fg = c.snow_storm.origin, bg = c.polar_night.bright },
}

return M
