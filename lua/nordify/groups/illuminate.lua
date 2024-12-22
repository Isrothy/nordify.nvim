local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        IlluminatedWordText = { fg = c.none, bg = c.polar_night.brightest },
        IlluminatedWordRead = { fg = c.none, bg = c.polar_night.brightest },
        IlluminatedWordWrite = { fg = c.none, bg = c.polar_night.brightest },
    }
end

return M
