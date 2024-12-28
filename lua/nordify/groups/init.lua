local utils = require("nordify.utils")

---@alias Nordify.HighlightsFn fun(colors: Nordify.Palette, opts:Nordify.InternalConfig):vim.api.keyset.highlight

---@alias Nordify.Highlights table<string,vim.api.keyset.highlight>

local M = {}

M.version = "0.0.0" -- x-release-please-version

M.plugins = {
    ["aerial.nvim"] = "aerial",
    ["barbar.nvim"] = "barbar",
    ["blink.cmp"] = "blink",
    ["codeium.nvim"] = "codeium",
    ["diffview.nvim"] = "diffview",
    ["flash.nvim"] = "flash",
    ["gitsigns.nvim"] = "gitsigns",
    ["gitgraph.nvim"] = "gitgraph",
    ["glance.nvim"] = "glance",
    ["highlight-undo.nvim"] = "highlight-undo",
    ["leap.nvim"] = "leap",
    ["markview.nvim"] = "markview",
    ["mini.indentscope"] = "mini_indentscope",
    ["neo-tree.nvim"] = "neo-tree",
    ["neogit"] = "neogit",
    ["noice.nvim"] = "noice",
    ["nvim-cmp"] = "cmp",
    ["nvim-navic"] = "navic",
    ["nvim-notify"] = "notify",
    ["notifier.nvim"] = "notifier",
    ["nvim-tree.lua"] = "nvim-tree",
    ["rainbow-delimiters.nvim"] = "rainbow",
    ["telescope.nvim"] = "telescope",
    ["trouble.nvim"] = "trouble",
    ["vim-gitgutter"] = "gitgutter",
    ["vim-illuminate"] = "illuminate",
    ["which-key.nvim"] = "which-key",
}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h")

function M.get_group(name)
    ---@type {get: Nordify.HighlightsFn, url: string}
    return utils.mod("nordify.groups." .. name)
end

---@param colors Nordify.Palette
---@param config Nordify.InternalConfig
function M.get(name, colors, config)
    local mod = M.get_group(name)
    return mod.get(colors, config)
end

---@param colors Nordify.Palette
---@param config Nordify.InternalConfig
function M.setup(colors, config)
    local groups = {
        base = true,
        semantic_tokens = true,
        treesitter = true,
        syntax = true,
    }

    if config.plugins.all then
        for _, group in pairs(M.plugins) do
            groups[group] = true
        end
    elseif config.plugins.auto and package.loaded.lazy then
        local plugins = require("lazy.core.config").plugins
        for plugin, group in pairs(M.plugins) do
            if plugins[plugin] then
                groups[group] = true
            end
        end

        -- special case for mini.nvim
        if plugins["mini.nvim"] then
            for _, group in pairs(M.plugins) do
                if group:find("^mini_") then
                    groups[group] = true
                end
            end
        end
    end

    -- manually enable/disable plugins
    for plugin, group in pairs(M.plugins) do
        local use = config.plugins[group]
        use = use == nil and config.plugins[plugin] or use
        if use ~= nil then
            if type(use) == "table" then
                use = use.enabled
            end
            groups[group] = use or nil
        end
    end

    local names = vim.tbl_keys(groups)
    table.sort(names)

    local cache = config.cache and utils.cache.read()

    local inputs = {
        colors = colors,
        plugins = names,
        version = M.version,
        opts = config,
    }

    local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.groups

    if not ret then
        ret = {}
        -- merge highlights
        for group in pairs(groups) do
            for k, v in pairs(M.get(group, colors, config)) do
                ret[k] = v
            end
        end
        if config.cache then
            utils.cache.write({ groups = ret, inputs = inputs })
        end
    end

    return ret, groups
end

return M
