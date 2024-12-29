local c = require("nordify.palette")["light"]

local M = {}

M.normal = {
    a = { fg = c.polar_night.bright, bg = c.frost.ice },
    b = { fg = c.polar_night.origin, bg = c.snow_storm.brighter },
    c = { fg = c.polar_night.origin, bg = c.snow_storm.origin },
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
    a = { fg = c.polar_night.bright, bg = c.aurora.yellow },
}

M.inactive = {
    a = { fg = c.polar_night.origin, bg = c.snow_storm.origin },
    b = { fg = c.polar_night.origin, bg = c.snow_storm.origin },
    c = { fg = c.polar_night.bright, bg = c.snow_storm.origin },
}

return M
