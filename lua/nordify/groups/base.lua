local utils = require("nordify.utils")
local M = {}

---@type Nordify.HighlightsFn
M.get = function(c, config)
    return {
        ColorColumn = { bg = c.bg1 }, -- used for the columns set with 'colorcolumn'
        Conceal = { fg = c.none, bg = c.none }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = c.fg0, bg = c.none, reverse = true }, -- the character under the cursor
        CursorIM = { fg = c.fg1, bg = c.none, reverse = true }, -- like Cursor, but used when in IME mode
        CursorColumn = { bg = c.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine = { bg = c.bg1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory = { fg = c.ac0 }, -- directory names (and other special names in listings)
        EndOfBuffer = { fg = c.bg1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        ErrorMsg = { fg = c.fg0, bg = c.error }, -- error messages on the command line
        VertSplit = { fg = config.borders and c.border0 or c.bg0, bg = c.none }, -- the column separating vertically split windows
        WinSeparator = {
            fg = config.borders and c.border0 or c.bg0,
            bg = c.none,
        }, -- Separators between window splits.
        Folded = { fg = c.fg2, bg = c.bg1 }, -- line used for closed folds
        FoldColumn = { fg = c.fg4, bg = c.bg0 }, -- 'foldcolumn'
        SignColumn = { fg = c.bg1, bg = utils.make_transparent_bg(c, config) }, -- column where |signs| are displayed
        -- Substitute = { link = "Search" }, -- |:substitute| replacement text highlighting
        LineNr = { fg = c.fg4, bg = c.none }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = { fg = c.fg0, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen = { bg = c.bg3, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg = { fg = c.fg0 }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = {}, -- Area for messages and cmdline
        MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = { fg = c.ac0 }, -- |more-prompt|
        NonText = { fg = c.nontext }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = { fg = c.fg0, bg = utils.make_transparent_bg(c, config) }, -- normal text
        NormalFloat = { fg = c.fg0, bg = c.bg0 }, -- Normal text in floating windows.
        FloatBorder = { fg = c.border1, bg = c.bg0 }, -- Borders of floating windows
        Pmenu = { fg = c.fg0, bg = c.bg1 }, -- Popup menu: normal item.
        PmenuSel = { fg = c.fg0, bg = c.bg2 }, -- Popup menu: selected item.
        PmenuSbar = { fg = c.fg0, bg = c.bg2 }, -- Popup menu: scrollbar.
        PmenuThumb = { fg = c.ac0, bg = c.bg3 }, -- Popup menu: Thumb of the scrollbar.
        Question = { fg = c.fg0 }, -- |hit-enter| prompt and yes/no questions
        QuickFixLine = { fg = c.fg0, bg = c.none, reverse = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search = config.search.theme == "vscode" and { fg = c.none, bg = utils.blend(c.search, c.bg0, 0.2) }
            or { fg = c.search, bg = c.none, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch = config.search.theme == "vscode" and { fg = c.fg0, bg = utils.blend( c.search, c.bg0, 0.5) }
            or { fg = c.fg2, bg = c.search }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        CurSearch = { link = "IncSearch" },
        SpecialKey = { fg = c.fg4 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad = { sp = c.aurora.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = { sp = c.aurora.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = { sp = c.fg1, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = { fg = c.fg2, bg = c.bg0, sp = c.fg2, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = { fg = c.ac0, bg = c.bg2 }, -- status line of current window
        StatusLineNC = { fg = c.fg0, bg = c.bg3 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine = { fg = c.fg0 }, -- tab pages line, not active tab page label
        TabLineFill = { fg = c.fg0, bg = c.bg1 }, -- tab pages line, where there are no labels
        TabLineSel = { fg = c.ac0, bg = c.bg3 }, -- tab pages line, active tab page label
        Title = { fg = c.fg0, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
        Visual = { fg = c.none, bg = c.bg2 }, -- Visual mode selection
        VisualNOS = { fg = c.none, bg = c.bg2 }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = { fg = c.bg0, bg = c.aurora.yellow }, -- warning messages
        Whitespace = { fg = c.nontext }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = { fg = c.ac0, bg = c.bg1 }, -- current match in 'wildmenu' completion
        qfLineNr = { fg = c.ac1 },
        qfFileName = { fg = c.ac0 },
        DiffAdd = utils.make_diff(c, config, c.git_add), -- diff mode: Added line
        DiffChange = utils.make_diff(c, config, c.git_change), --  diff mode: Changed line
        DiffDelete = utils.make_diff(c, config, c.git_delete), -- diff mode: Deleted line
        DiffText = utils.make_diff(c, config, c.git_text), -- diff mode: Changed text within a changed line
        diffAdded = { link = "DiffAdd" },
        diffChanged = { link = "DiffChange" },
        diffRemoved = { link = "DiffDelete" },
        Added = { link = "DiffAdd" },
        Changed = { link = "DiffChange" },
        Removed = { link = "DiffDelete" },
        healthError = { fg = c.error },
        healthSuccess = { fg = c.ok },
        healthWarning = { fg = c.warning },
        WinBar = { bg = c.bg0 },
        WinBarNC = { bg = c.bg0 },

        DiagnosticOk = { fg = c.ok }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

        DiagnosticVirtualTextError = { bg = utils.blend(c.error, c.bg0, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
        DiagnosticVirtualTextWarn = { bg = utils.blend(c.warning, c.bg0, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
        DiagnosticVirtualTextInfo = { bg = utils.blend(c.info, c.bg0, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
        DiagnosticVirtualTextHint = { bg = utils.blend(c.hint, c.bg0, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text

        DiagnosticUnderlineError = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
        DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
        DiagnosticUnderlineInfo = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
        DiagnosticUnderlineHint = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

        LspCodeLens = { fg = c.fg4 },
        LspInlayHint = { fg = c.fg4 },

        TermCursor = { fg = c.fg0, bg = c.none, reverse = true }, -- cursor in a focused terminal
        TermCursorNC = { fg = c.fg4, bg = c.none, reverse = true }, -- cursor in an unfocused terminal
    }
end

return M
