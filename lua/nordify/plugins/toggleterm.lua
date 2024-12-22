local M = {}

M.make_opts = function(options)
    return vim.tbl_deep_extend("force", {}, {
        highlights = {
            FloatBorder = {
                link = "FloatBorder",
            },
        },
    }, options or {})
end

return M
