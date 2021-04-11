--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
    bg_one = hsl("#30323a")
    bg_two = hsl("#363944")
    bg_three = hsl("#3b3e48")
    bg_four = hsl("#414550")
    bg_red = hsl("#fc5d7c")
    bg_green = hsl("#a7df78")
    bg_blue = hsl("#85d3f2")
    palette_black = hsl("#181819")
    palette_red = hsl("#fc5d7c")
    palette_orange = hsl("#f39660")
    palette_yellow = hsl("#e7c664")
    palette_green = hsl("#0ed072")
    palette_blue = hsl("#76cce0")
    palette_purple = hsl("#b39df3")
    palette_gray = hsl("#7f8490")
    syntax_type = palette_blue
    syntax_structure = palette_blue
    syntax_storageclass = palette_blue
    syntax_identifier = palette_orange
    syntax_constant = palette_orange
    syntax_preproc = palette_red
    syntax_statement = palette_red
    syntax_special = palette_purple
    syntax_number = palette_purple
    syntax_function = palette_green
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Normal       { fg = hsl("#e2e2e3"), bg=hsl("#2c2e34") }, -- normal text
    Terminal { Normal },
     EndOfBuffer  { bg = Normal.bg, fg = Normal.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
      SignColumn   { Normal }, -- column where |signs| are displayed
     Search       { bg = hsl(44,100,19)}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    { bg = hsl(75,100,20) }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
     Comment      { fg = palette_gray }, -- any comment
     CursorLine   { bg = bg_one}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
     ColorColumn  { CursorLine }, -- used for the columns set with 'colorcolumn'
     CursorColumn { CursorLine}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
     Conceal      { fg = Normal.fg.darken(30) }, -- placeholder characters substituted for concealed text (see 'conceallevel')
     Cursor       { }, -- character under the cursor
     lCursor      { Cursor }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
     CursorIM     { Cursor }, -- like Cursor, but used when in IME mode |CursorIM|
     Directory    { fg = palette_green }, -- directory names (and other special names in listings)
     DiffAdd      { bg = hsl("#394634")}, -- diff mode: Added line |diff.txt|
     DiffChange   { bg = hsl("#354157")}, -- diff mode: Changed line |diff.txt|
     DiffDelete   { bg = hsl("#55393d")}, -- diff mode: Deleted line |diff.txt|
     DiffText     { Normal}, -- diff mode: Changed text within a changed line |diff.txt|
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
     ErrorMsg     { fg = palette_red}, -- error messages on the command line
     VertSplit    { fg = palette_black, bg = Normal.bg }, -- the column separating vertically split windows
    Folded       { Comment }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
     Substitute   { bg = DiffAdd.bg}, -- |:substitute| replacement text highlighting
     LineNr       { fg = palette_gray }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
     CursorLineNr { fg = Normal.fg }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
     MatchParen   { bg = bg_four}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
     ModeMsg      { fg = Normal.fg}, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
     MoreMsg      { fg = palette_blue}, -- |more-prompt|
     NonText      { bg = bg_four}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
     Pmenu        { bg = bg_two, fg = Normal.fg}, -- Popup menu: normal item.
     PmenuSel     { fg = Normal.bg, bg = palette_green}, -- Popup menu: selected item.
     PmenuSbar    { bg = Normal.bg }, -- Popup menu: scrollbar.
     PmenuThumb   {  bg = palette_gray }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { fg = palette_blue }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey   { bg = bg_four}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
     SpellBad     {gui = 'undercurl', sp = palette_red}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
     SpellCap     {gui = 'undercurl', sp = palette_yellow }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
     SpellLocal   {gui = 'undercurl', sp = palette_blue }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
     SpellRare    {gui = 'undercurl', sp = palette_purple }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
     StatusLine   { fg = Normal.fg, bg = bg_three }, -- status line of current window
     StatusLineNC { fg = palette_gray, bg = bg_one}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
     TabLine      { fg = palette_gray, bg = bg_one }, -- tab pages line, not active tab page label
     TabLineFill  { fg = palette_gray, bg = bg_one }, -- tab pages line, where there are no labels
     TabLineSel   { fg = Normal.bg, bg = bg_red}, -- tab pages line, active tab page label
     Title        { fg = palette_red, gui="bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { CursorLine }, -- Visual mode selection
     VisualNOS    { bg = bg_three}, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = palette_yellow }, -- warning messages
    Whitespace   { bg = bg_four}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

     Constant       { fg = syntax_constant}, -- (preferred) any constant
     String         { fg = palette_yellow }, --   a string constant: "this is a string"
     Character      { String }, --  a character constant: 'c', '\n'
     Number         { fg = syntax_number}, --   a number constant: 234, 0xff
     Boolean        { fg = palette_purple}, --  a boolean constant: TRUE, false
     Float          { Number }, --    a floating point constant: 2.3e10

     Identifier     { fg = syntax_identifier}, -- (preferred) any variable name
     Function       { fg = syntax_function}, -- function name (also: methods for classes)

     Statement      { fg = syntax_statement}, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
     Label          { fg = palette_purple}, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

     PreProc        { fg = syntax_preproc }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

     Type           { fg = syntax_type }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

     Special        { fg = syntax_special}, -- (preferred) any special symbol
     SpecialChar    { Special }, --  special character in a constant
     Tag            { fg = palette_orange }, --    you can use CTRL-] on this
     Delimiter      { fg = Normal.fg }, --  character that needs attention
     SpecialComment { Comment }, -- special things inside a comment
        Debug          { fg = palette_yellow}, --    debugging statements
     Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
     Bold       { gui = "bold" },
     Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
     Ignore         { Comment }, -- (preferred) left blank, hidden  |hl-Ignore|

     Error          { fg = palette_red}, -- (preferred) any erroneous construct

     Todo           { fg = palette_blue }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
-- -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
