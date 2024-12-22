local M = {}

---@type Nordify.HighlightsFn
M.get = function(_, _)
    return {
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.field"] = { link = "@field" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.method"] = { link = "@method" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.struct"] = { link = "@structure" },
        ["@lsp.type.typeParameter"] = { link = "@parameter" },
        ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
        ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.operator.injected"] = { link = "@operator" },
        ["@lsp.typemod.string.injected"] = { link = "@string" },
        ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
        ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    }
end

return M
