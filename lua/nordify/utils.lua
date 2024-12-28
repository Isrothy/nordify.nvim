local M = {}

---@class Nordify.Cache
---@field groups vim.api.keyset.highlight
---@field inputs table

local uv = vim.uv or vim.loop

---@param c Nordify.Palette
---@param config Nordify.InternalConfig
---@param color string
---@return vim.api.keyset.highlight
M.make_diff = function(c, config, color)
    return { fg = color, bg = c.bg1, reverse = config.diff.mode ~= "fg" }
end

---@param c Nordify.Palette
---@param config Nordify.InternalConfig
M.make_transparent_bg = function(c, config)
    if config.transparent then
        return c.none
    end
    return c.bg0
end

---@param color string
---@param config Nordify.InternalConfig
---@return vim.api.keyset.highlight
M.make_error = function(config, color)
    if config.errors.mode == "bg" then
        return vim.tbl_extend("force", { bg = color }, config.styles.errors)
    elseif config.errors.mode == "fg" then
        return vim.tbl_extend("force", { undercurl = true, sp = color, fg = color }, config.styles.errors)
    else
        return vim.tbl_extend("force", { undercurl = true, sp = color }, config.styles.errors)
    end
end

---@param color string
---@return number[]
M.hexToRgb = function(color)
    color = string.lower(color)
    return { tonumber(color:sub(2, 3), 16), tonumber(color:sub(4, 5), 16), tonumber(color:sub(6, 7), 16) }
end

---@param foreground string
---@param background string
---@param alpha integer
---@return string
M.blend = function(foreground, background, alpha)
    alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
    local bg = M.hexToRgb(background)
    local fg = M.hexToRgb(foreground)

    local blendChannel = function(i)
        local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

---@param c Nordify.Palette
---@param color string
---@param amount integer
---@return string
M.darken = function(c, color, amount)
    return M.blend(color, c.polar_night.origin, amount)
end

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h:h")

function M.mod(modname)
    if package.loaded[modname] then
        return package.loaded[modname]
    end
    local ret = loadfile(me .. "/" .. modname:gsub("%.", "/") .. ".lua")()
    package.loaded[modname] = ret
    return ret
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
    return (
        str:gsub("($%b{})", function(w)
            return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
        end)
    )
end

---@param file string
function M.read(file)
    local fd = assert(io.open(file, "r"))
    ---@type string
    local data = fd:read("*a")
    fd:close()
    return data
end

---@param file string
---@param contents string
function M.write(file, contents)
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
    local fd = assert(io.open(file, "w+"))
    fd:write(contents)
    fd:close()
end

M.cache = {}

function M.cache.file()
    return vim.fn.stdpath("cache") .. "/nordify" .. ".json"
end

function M.cache.read()
    ---@type boolean, Nordify.Cache
    local ok, ret = pcall(function()
        return vim.json.decode(
            M.read(M.cache.file()),
            { luanil = {
                object = true,
                array = true,
            } }
        )
    end)
    return ok and ret or nil
end

---@param data Nordify.Cache
function M.cache.write(data)
    pcall(M.write, M.cache.file(), vim.json.encode(data))
end

function M.cache.clear()
    uv.fs_unlink(M.cache.file())
end

return M
