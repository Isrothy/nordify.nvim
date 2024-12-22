local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        CodeiumSuggestion = { fg = c.polar_night.light },
    }
end

return M
