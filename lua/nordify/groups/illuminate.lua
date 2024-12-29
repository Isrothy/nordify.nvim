local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        IlluminatedWordText = { fg = c.none, bg = c.bg3 },
        IlluminatedWordRead = { fg = c.none, bg = c.bg3 },
        IlluminatedWordWrite = { fg = c.none, bg = c.bg3 },
    }
end

return M
