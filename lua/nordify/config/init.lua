---@class Nordify.InternalConfig
local default = {
    ---@type boolean Enable this to disable setting the background color
    transparent = false,

    ---@type boolean Configure the colors used when opening a `:terminal` in Neovim
    terminal_colors = true,

    diff = {
        mode = "bg", ---@type "bg"|"fg"
    },
    search = {
        theme = "vim", ---@type "vim"|"vscode"
    },
    ---@type boolean
    borders = true,

    errors = {
        mode = "bg", ---@type "bg"|"fg"|"none"
    },
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    styles = {
        comments = { italic = true }, ---@type vim.api.keyset.highlight
        keywords = {}, ---@type vim.api.keyset.highlight
        functions = {}, ---@type vim.api.keyset.highlight
        variables = {}, ---@type vim.api.keyset.highlight
        errors = {}, ---@type vim.api.keyset.highlight

        bufferline = {
            current = {}, ---@type vim.api.keyset.highlight
            modified = { italic = true }, ---@type vim.api.keyset.highlight
        },
    },
    ---@type boolean
    cache = true, -- When set to true, the theme will be cached for better performance

    ---@type table<string, boolean|{enabled:boolean}>
    plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
    },
}

local user_config = type(vim.g.nordify) == "function" and vim.g.nordify() or vim.g.nordify or {}

local config = vim.tbl_deep_extend("force", default, user_config)

return config
