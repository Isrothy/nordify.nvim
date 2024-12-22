local M = {}

M.url = "https://github.com/SmiteshP/nvim-navic"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        NavicIconsFile = { link = "@include" },
        NavicIconsModule = { link = "@include" },
        NavicIconsNamespace = { link = "@lsp.type.namespace" },
        NavicIconsPackage = { link = "@include" },
        NavicIconsClass = { link = "@lsp.type.class" },
        NavicIconsMethod = { link = "@lsp.type.method" },
        NavicIconsProperty = { link = "@lsp.type.property" },
        NavicIconsField = { link = "@lsp.type.field" },
        NavicIconsConstructor = { link = "@constructor" },
        NavicIconsEnum = { link = "@lsp.type.enum" },
        NavicIconsInterface = { link = "@lsp.type.interface" },
        NavicIconsFunction = { link = "@lsp.type.function" },
        NavicIconsVariable = { link = "@variable" },
        NavicIconsConstant = { link = "@constant" },
        NavicIconsString = { link = "@string" },
        NavicIconsNumber = { link = "@number" },
        NavicIconsBoolean = { link = "@boolean" },
        NavicIconsArray = { link = "@variable" },
        NavicIconsObject = { link = "@lsp.type.class" },
        NavicIconsKey = { link = "@variable" },
        NavicIconsKeyword = { link = "@keyword" },
        NavicIconsNull = { link = "@variable" },
        NavicIconsEnumMember = { link = "@lsp.type.enumMember" },
        NavicIconsStruct = { link = "@lsp.type.struct" },
        NavicIconsEvent = { link = "@lsp.type.event" },
        NavicIconsOperator = { link = "@lsp.type.operator" },
        NavicIconsTypeParameter = { link = "@lsp.type.typeParameter" },
        NavicText = { link = "@text" },
        NavicSeparator = { fg = c.frost.artic_water, bg = c.polar_night.brighter },
    }
end

return M
