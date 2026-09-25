hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'nord'
set termguicolors
set background=dark

" Palette
let s:bg      = '#1d2129'
let s:bg_alt  = '#434C5E'
let s:fg      = '#D8DEE9'
let s:fg_hi   = '#ECEFF4'
let s:fg_dim  = '#E5E9F0'
let s:gray    = '#4C566A'
let s:teal    = '#8FBCBB'
let s:cyan    = '#88C0D0'
let s:blue    = '#81A1C1'
let s:deep    = '#5E81AC'
let s:red     = '#BF616A'
let s:orange  = '#D08770'
let s:yellow  = '#EBCB8B'
let s:green   = '#A3BE8C'
let s:purple  = '#B48EAD'

function! s:hi(group, fg, bg, attr)
  execute 'hi ' . a:group
    \ . ' guifg=' . (a:fg  == '' ? 'NONE' : a:fg)
    \ . ' guibg=' . (a:bg  == '' ? 'NONE' : a:bg)
    \ . ' gui='   . (a:attr == '' ? 'NONE' : a:attr)
endfunction

" Editor UI
call s:hi('Normal',       s:fg,     s:bg,     '')
call s:hi('NormalFloat',  s:fg,     s:bg_alt, '')
call s:hi('Cursor',       s:bg,     s:fg,     '')
call s:hi('CursorLine',   '',       s:bg_alt, '')
call s:hi('CursorLineNr', s:cyan,   '',       'bold')
call s:hi('LineNr',       s:gray,   '',       '')
call s:hi('SignColumn',   s:gray,   s:bg,     '')
call s:hi('ColorColumn',  '',       s:bg_alt, '')
call s:hi('VertSplit',    s:gray,   s:bg,     '')
call s:hi('WinSeparator', s:gray,   s:bg,     '')
call s:hi('Visual',       '',       s:bg_alt, '')
call s:hi('Search',       s:bg,     s:cyan,   '')
call s:hi('IncSearch',    s:bg,     s:yellow, '')
call s:hi('MatchParen',   s:cyan,   s:bg_alt, 'bold')
call s:hi('Folded',       s:gray,   s:bg_alt, '')
call s:hi('NonText',      s:gray,   '',       '')
call s:hi('SpecialKey',   s:gray,   '',       '')
call s:hi('EndOfBuffer',  s:bg,     '',       '')
call s:hi('Pmenu',        s:fg,     s:bg_alt, '')
call s:hi('PmenuSel',     s:cyan,   s:gray,   '')
call s:hi('StatusLine',   s:fg,     s:bg_alt, '')
call s:hi('StatusLineNC', s:gray,   s:bg_alt, '')
call s:hi('TabLine',      s:gray,   s:bg_alt, '')
call s:hi('TabLineSel',   s:cyan,   s:bg,     'bold')
call s:hi('TabLineFill',  '',       s:bg_alt, '')
call s:hi('Directory',    s:cyan,   '',       '')
call s:hi('Title',        s:fg_hi,  '',       'bold')
call s:hi('ErrorMsg',     s:red,    '',       'bold')
call s:hi('WarningMsg',   s:yellow, '',       '')
call s:hi('MoreMsg',      s:green,  '',       '')
call s:hi('Question',     s:cyan,   '',       '')

" Syntax
call s:hi('Comment',      s:gray,   '',       'italic')
call s:hi('Constant',     s:fg,     '',       '')
call s:hi('String',       s:green,  '',       '')
call s:hi('Character',    s:green,  '',       '')
call s:hi('Number',       s:purple, '',       '')
call s:hi('Boolean',      s:blue,   '',       '')
call s:hi('Float',        s:purple, '',       '')
call s:hi('Identifier',   s:fg,     '',       '')
call s:hi('Function',     s:cyan,   '',       '')
call s:hi('Statement',    s:blue,   '',       '')
call s:hi('Conditional',  s:blue,   '',       '')
call s:hi('Repeat',       s:blue,   '',       '')
call s:hi('Label',        s:blue,   '',       '')
call s:hi('Operator',     s:blue,   '',       '')
call s:hi('Keyword',      s:blue,   '',       '')
call s:hi('Exception',    s:blue,   '',       '')
call s:hi('PreProc',      s:blue,   '',       '')
call s:hi('Include',      s:blue,   '',       '')
call s:hi('Define',       s:blue,   '',       '')
call s:hi('Macro',        s:blue,   '',       '')
call s:hi('Type',         s:teal,   '',       '')
call s:hi('StorageClass', s:blue,   '',       '')
call s:hi('Structure',    s:blue,   '',       '')
call s:hi('Special',      s:cyan,   '',       '')
call s:hi('Delimiter',    s:fg_dim, '',       '')
call s:hi('SpecialComment', s:cyan, '',       'italic')
call s:hi('Underlined',   s:cyan,   '',       'underline')
call s:hi('Error',        s:red,    '',       '')
call s:hi('Todo',         s:yellow, '',       'bold')

" Diff / git
call s:hi('DiffAdd',      s:green,  s:bg_alt, '')
call s:hi('DiffChange',   s:yellow, s:bg_alt, '')
call s:hi('DiffDelete',   s:red,    s:bg_alt, '')
call s:hi('DiffText',     s:cyan,   s:bg_alt, 'bold')

" Spelling and diagnostics (ALE / coc)
call s:hi('SpellBad',     s:red,    '',       'undercurl')
call s:hi('SpellCap',     s:yellow, '',       'undercurl')
call s:hi('ALEError',     '',       '',       'underline')
call s:hi('ALEWarning',   '',       '',       'underline')
call s:hi('CocErrorSign', s:red,    '',       '')
call s:hi('CocWarningSign', s:yellow, '',     '')
call s:hi('CocInfoSign',  s:cyan,   '',       '')
call s:hi('CocHintSign',  s:teal,   '',       '')
call s:hi('CocFloating',  s:fg,     s:bg_alt, '')

" Terminal ANSI colors (for :terminal)
let g:terminal_color_0  = s:bg_alt
let g:terminal_color_1  = s:red
let g:terminal_color_2  = s:green
let g:terminal_color_3  = s:yellow
let g:terminal_color_4  = s:blue
let g:terminal_color_5  = s:purple
let g:terminal_color_6  = s:cyan
let g:terminal_color_7  = s:fg
let g:terminal_color_8  = s:gray
let g:terminal_color_9  = s:red
let g:terminal_color_10 = s:green
let g:terminal_color_11 = s:yellow
let g:terminal_color_12 = s:blue
let g:terminal_color_13 = s:purple
let g:terminal_color_14 = s:teal
let g:terminal_color_15 = s:fg_hi