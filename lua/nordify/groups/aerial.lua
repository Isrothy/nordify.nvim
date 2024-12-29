local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type Nordify.HighlightsFn
M.get = function(c)
    return {
        AerialLine = { bg = c.bg1 },
        AerialLineNC = { bg = c.bg1 },

        AerialArrayIcon = { link = "AerialArray" },
        AerialBooleanIcon = { link = "AerialBoolean" },
        AerialClassIcon = { link = "AerialClass" },
        AerialConstantIcon = { link = "AerialConstant" },
        AerialConstructorIcon = { link = "AerialConstructor" },
        AerialEnumIcon = { link = "AerialEnum" },
        AerialEnumMemberIcon = { link = "AerialEnumMember" },
        AerialEventIcon = { link = "AerialEvent" },
        AerialFieldIcon = { link = "AerialField" },
        AerialFileIcon = { link = "AerialFile" },
        AerialFunctionIcon = { link = "AerialFunction" },
        AerialInterfaceIcon = { link = "AerialInterface" },
        AerialKeyIcon = { link = "AerialKey" },
        AerialMethodIcon = { link = "AerialMethod" },
        AerialModuleIcon = { link = "AerialModule" },
        AerialNamespaceIcon = { link = "AerialNamespace" },
        AerialNullIcon = { link = "AerialNull" },
        AerialNumberIcon = { link = "AerialNumber" },
        AerialObjectIcon = { link = "AerialObject" },
        AerialOperatorIcon = { link = "AerialOperator" },
        AerialPackageIcon = { link = "AerialPackage" },
        AerialPropertyIcon = { link = "AerialProperty" },
        AerialStringIcon = { link = "AerialString" },
        AerialStructIcon = { link = "AerialStruct" },
        AerialTypeParameterIcon = { link = "AerialTypeParameter" },
        AerialVariableIcon = { link = "AerialVariable" },

        AerialArray = { link = "@lsp.type.variable" },
        AerialBoolean = { link = "@boolean" },
        AerialClass = { link = "@lsp.type.class" },
        AerialConstant = { link = "@constant" },
        AerialConstructor = { link = "@constructor" },
        AerialEnum = { link = "@lsp.type.enum" },
        AerialEnumMember = { link = "@lsp.type.enumMember" },
        AerialEvent = { link = "@lsp.type.event" },
        AerialField = { link = "@field" },
        AerialFile = { link = "@include" },
        AerialFunction = { link = "@lsp.type.function" },
        AerialInterface = { link = "@lsp.type.interface" },
        AerialKey = { link = "@variable" },
        AerialMethod = { link = "@lsp.type.method" },
        AerialModule = { link = "@include" },
        AerialNamespace = { link = "@lsp.type.namespace" },
        AerialNull = { link = "@variable" },
        AerialNumber = { link = "@number" },
        AerialObject = { link = "@variable" },
        AerialOperator = { link = "@operator" },
        AerialPackage = { link = "@include" },
        AerialProperty = { link = "@lsp.type.property" },
        AerialString = { link = "@string" },
        AerialStruct = { link = "@lsp.type.struct" },
        AerialTypeParameter = { link = "@lsp.type.typeParameter" },
        AerialVariable = { link = "@variable" },
    }
end

return M
