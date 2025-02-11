local M = {}

M.url = "https://github.com/echasnovski/mini.indentscope"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        MiniIndentscopeSymbol = { fg = c.frost.artic_ocean },
        MiniIndentscopePrefix = { nocombine = true },
    }
end

return M
