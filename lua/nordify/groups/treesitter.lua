local utils = require("nordify.utils")
local M = {}

---@type Nordify.HighlightsFn
M.get = function(c, config)
    return {
        -- Misc
        ["@comment"] = vim.tbl_extend("force", { fg = c.fg3 }, config.styles.comments), --  line and block comments
        ["@error"] = utils.make_error(config, c.error), --  syntax/parser errors
        -- ["@none"]     --  completely disable the highlight
        ["@keyword.directive"] = { fg = c.frost.artic_water }, --  various preprocessor directives & shebangs
        ["@preproc"] = { link = "@keyword.directive" }, -- @deprecated
        ["@keyword.directive.define"] = { fg = c.frost.artic_water }, --  preprocessor definition directives
        ["@define"] = { link = "@keyword.directive.define" }, -- @deprecated
        ["@operator"] = { fg = c.frost.artic_water }, --  symbolic operators (e.g. `+` / `*`)

        -- Punctuation
        ["@punctuation.delimiter"] = { fg = c.fg2 }, --  delimiters (e.g. `;` / `.` / `,`)
        ["@punctuation.bracket"] = { fg = c.frost.ice }, --  brackets (e.g. `()` / `{}` / `[]`)
        ["@markup.list"] = { fg = c.frost.artic_water }, --  special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special"] = { link = "@markup.list" }, -- @deprecated

        -- Literals
        ["@string"] = { fg = c.aurora.green }, --  string literals
        ["@string.regexp"] = { fg = c.aurora.yellow }, --  regular expressions
        ["@string.regex"] = { link = "@string.regexp" }, -- @deprecated
        ["@string.escape"] = { fg = c.aurora.yellow }, --  escape sequences
        ["@markup.link.label"] = { fg = c.aurora.yellow }, --  other special strings (e.g. dates)
        ["@string.special"] = { link = "@markup.link.label" }, -- @deprecated
        ["@character"] = { fg = c.aurora.green }, --  character literals
        ["@character.special"] = { fg = c.aurora.yellow }, --  special characters (e.g. wildcards)
        ["@boolean"] = { fg = c.frost.artic_water }, --  boolean literals
        ["@number"] = { fg = c.aurora.purple }, --  numeric literals
        ["@number.float"] = { fg = c.aurora.purple }, --  floating-point number literals
        ["@float"] = { link = "@number.float" }, -- @deprecated

        -- Functions
        ["@function"] = vim.tbl_extend("force", { fg = c.frost.ice }, config.styles.functions), --  function definitions
        ["@function.builtin"] = { fg = c.frost.ice }, --  built-in functions
        ["@function.call"] = { fg = c.frost.ice }, --  function calls
        ["@function.macro"] = { fg = c.frost.artic_water }, --  preprocessor macros
        ["@function.method"] = { fg = c.frost.ice }, --  method definitions
        ["@method"] = { link = "@function.method" }, -- @deprecated
        ["@function.method.call"] = { fg = c.frost.ice }, --  method calls
        ["@method.call"] = { link = "@function.method.call" }, -- @deprecated
        ["@constructor"] = { fg = c.frost.ice }, --  constructor calls and definitions
        ["@variable.parameter"] = { fg = c.frost.ice }, --  parameters of a function
        ["@parameter"] = { link = "@variable.parameter" }, -- @deprecated

        -- Keywords
        ["@keyword"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.keywords), --  various keywords
        ["@keyword.function"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.functions), --  keywords that define a function (e.g. `func` in Go, `def` in Python)
        ["@keyword.operator"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.keywords), --  operators that are English words (e.g. `and` / `or`)
        ["@keyword.return"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.keywords), --  keywords like `return` and `yield`
        ["@keyword.conditional"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.keywords), --  keywords related to conditionals (e.g. `if` / `else`)
        ["@conditional"] = { link = "@keyword.conditional" }, -- @deprecated
        ["@keyword.repeat"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.keywords), --  keywords related to loops (e.g. `for` / `while`)
        ["@repeat"] = { link = "@keyword.repeat" }, -- @deprecated
        ["@keyword.debug"] = vim.tbl_extend("force", { fg = c.fg0 }, config.styles.keywords), --  keywords related to debugging
        ["@debug"] = { link = "@keyword.debug" }, -- @deprecated
        ["@label"] = vim.tbl_extend("force", { fg = c.frost.polar_water }, config.styles.keywords), --  GOTO and other labels (e.g. `label:` in C)
        ["@keyword.import"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.keywords), --  keywords for including modules (e.g. `import` / `from` in Python)
        ["@include"] = { link = "@keyword.import" }, -- @deprecated
        ["@keyword.exception"] = vim.tbl_extend("force", { fg = c.frost.artic_water }, config.styles.keywords), --  keywords related to exceptions (e.g. `throw` / `catch`)
        ["@exception"] = { link = "@keyword.exception" }, -- @deprecated

        -- Types
        ["@type"] = { fg = c.frost.polar_water }, --  type or class definitions and annotations
        ["@type.builtin"] = { fg = c.frost.artic_water }, --  built-in types
        ["@type.definition"] = { fg = c.frost.polar_water }, --  type definitions (e.g. `typedef` in C)
        ["@type.qualifier"] = { fg = c.frost.artic_water }, --  type qualifiers (e.g. `const`)
        ["@keyword.storage"] = { fg = c.frost.artic_water }, --  visibility/life-time modifiers
        ["@storageclass"] = { link = "@keyword.storage" }, -- @deprecated
        ["@attribute"] = { fg = c.fg0 }, --  attribute annotations (e.g. Python decorators)
        ["@variable.member"] = { fg = c.fg0 }, --  object and struct fields
        ["@field"] = { link = "@field" }, -- @deprecated
        ["@property"] = { fg = c.fg0 }, --  similar to `@field`

        -- Identifiers
        ["@variable"] = vim.tbl_extend("force", { fg = c.fg0 }, config.styles.variables), --  various variable names
        ["@variable.builtin"] = { fg = c.frost.artic_water }, --  built-in variable names (e.g. `this`)
        ["@constant"] = { fg = c.fg0 }, --  constant identifiers
        ["@constant.builtin"] = { fg = c.frost.artic_water }, --  built-in constant values
        ["@constant.macro"] = { fg = c.frost.artic_water }, --  constants defined by the preprocessor
        ["@module"] = { fg = c.fg0 }, --  modules or namespaces
        ["@namespace"] = { link = "@module" }, -- @deprecated
        ["@string.special.symbol"] = { fg = c.fg0 }, --  symbols or atoms
        ["@symbol"] = { link = "@string.special.symbol" }, -- @deprecated

        -- Text
        ["@text"] = { fg = c.fg0 }, -- @deprecated
        ["@markup.strong"] = { bold = true }, --  bold text
        ["@text.strong"] = { link = "@markup.strong" }, -- @deprecated
        ["@markup.italic"] = { italic = true }, --  text with emphasis
        ["@text.emphasis"] = { link = "@markup.italic" }, -- @deprecated
        ["@markup.underline"] = { underline = true }, --  underlined text
        ["@text.underline"] = { link = "@markup.underline" }, -- @deprecated
        ["@markup.strikethrough"] = { strikethrough = true }, --  strikethrough text
        ["@text.strike"] = { link = "@markup.strikethrough" }, -- @deprecated
        ["@markup.heading"] = { fg = c.frost.ice, bold = true }, --  text that is part of a title
        ["@text.title"] = { link = "@markup.heading" }, -- @deprecated
        ["@markup.raw"] = { fg = c.frost.polar_water }, --  literal or verbatim text
        ["@text.literal"] = { link = "@markup.raw" }, -- @deprecated
        ["@markup.link.url"] = { fg = c.aurora.green, underline = true, sp = c.aurora.green }, --  URIs (e.g. hyperlinks)
        ["@text.uri"] = { link = "@markup.link.url" }, -- @deprecated
        ["@markup.math"] = { fg = c.frost.polar_water }, --  math environments (e.g. `$ ... $` in LaTeX)
        ["@text.math"] = { link = "@markup.math" }, -- @deprecated
        ["@markup.environment"] = { fg = c.frost.polar_water }, --  text environments of markup languages
        ["@text.environment"] = { link = "@markup.environment" }, -- @deprecated
        ["@markup.environment.name"] = { fg = c.frost.artic_water }, --  text indicating the type of an environment
        ["@text.environment.name"] = { link = "@markup.environment.name" }, -- @deprecated
        ["@markup.link"] = { fg = c.frost.polar_water }, --  text references, footnotes, citations, etc.
        ["@text.reference"] = { link = "@markup.link" }, -- @deprecated
        ["@comment.todo"] = { fg = c.frost.artic_water }, --  todo notes
        ["@text.todo"] = { link = "@comment.todo" }, -- @deprecated
        ["@comment.note"] = { fg = c.frost.artic_water }, --  info notes
        ["@text.note"] = { link = "@comment.note" }, -- @deprecated
        ["@comment.warning"] = { fg = c.warning }, --  warning notes
        ["@text.warning"] = { link = "@comment.warning" }, -- @deprecated
        ["@comment.error"] = { fg = c.error }, --  danger/error notes
        ["@text.danger"] = { link = "@comment.error" }, -- @deprecated
        ["@text.diff.add"] = { link = "DiffAdd" }, --  added text (for diff files)
        ["@text.diff.delete"] = { link = "DiffDelete" }, --  deleted text (for diff files)
        ["@diff.plus"] = { link = "DiffAdd" }, --  added text (for diff files)
        ["@diff.minus"] = { link = "DiffDelete" }, --  deleted text (for diff files)
        ["@diff.delta"] = { link = "DiffChange" },

        -- Tags
        ["@tag"] = { fg = c.frost.artic_water }, --  XML tag names
        ["@tag.attribute"] = { fg = c.frost.polar_water }, --  XML tag attributes
        ["@tag.delimiter"] = { fg = c.frost.artic_water }, --  XML tag delimiters

        -- Conceal
        ["@conceal"] = { fg = c.none, bg = c.none }, --  for captures that are only used for concealing

        -- Spell
        -- ["@spell"] = {}, --  for defining regions to be spellchecked
        -- ["@nospell"] = {}, --  for defining regions that should NOT be spellchecked

        -- Language specific
        ["@constant.git_rebase"] = { fg = c.frost.polar_water },
        ["@property.yaml"] = { fg = c.frost.polar_water },
        ["@text.phpdoc"] = { fg = c.fg3 },
        ["@attribute.phpdoc"] = { fg = c.frost.artic_water },
        ["@character.printf"] = { fg = c.aurora.yellow },
    }
end

return M
