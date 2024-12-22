local M = {}

---@class Nordify.Config.Styles
---@field comments? vim.api.keyset.highlight
---@field keywords? vim.api.keyset.highlight
---@field functions? vim.api.keyset.highlight
---@field variables? vim.api.keyset.highlight
---@field errors? vim.api.keyset.highlight
---@field buffers_line? {current?: vim.api.keyset.highlight, modified?: vim.api.keyset.highlight}

---@class Nordify.UserConfig
---@field transparent? boolean
---@field terminal_colors? boolean
---@field borders? boolean
---@field diff? { mode?: "bg"|"fg" }
---@field search? { theme?: "vim"|"vscode" }
---@field errors? { mode?: "bg"|"fg"|"none" }
---@field styles? Nordify.Config.Styles
---@field cache? boolean
---@field plugins? table<string, boolean|{enabled:boolean}>-

---@type Nordify.UserConfig | fun():Nordify.UserConfig | nil
vim.g.nordify = vim.g.nordify

return M
