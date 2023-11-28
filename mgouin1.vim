" Vim color file
" mgouin1
" Created by Mathieu Gouin with ThemeCreator (https://github.com/mswift42/themecreator)

hi clear

if exists("syntax on")
syntax reset
endif

"set t_Co=256
let g:colors_name = "mgouin1"


" Define reusable colorvariables.
let s:fg="#ffffff"
let s:fg2="#ebebeb"
let s:fg3="#d6d6d6"
let s:fg4="#c2c2c2"

let s:bg="#000000"
let s:bg2="#141414"
let s:bg3="#292929"
let s:bg4="#3d3d3d"

"https://mswift42.github.io/themecreator/
" ********** start **********
let s:builtin="#4d79ff"   " TBD Seems not used...
let s:keyword="#4d79ff"

"let s:str="#c2660a"
"let s:str="#cc7700"
"let s:str="#e68600"
"let s:str="#ff9500"
let s:str="#ffaa00"

let s:func="#00ee00"
let s:var="#66cc00"     " Only used for goto labels or switch case and default
let s:type="#00ffff"
let s:const= "#d92680"

"let s:comment="#808080"
"let s:comment="#c499ff"
let s:comment="#b78cf2"

" ********** stop **********

let s:warning="#ff0000"
let s:warning2="#ff8800"


exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Cursor guifg='s:bg' guibg=Green'
exe 'hi CursorLine  guibg='s:bg3
exe 'hi CursorColumn  guibg='s:bg3
exe 'hi ColorColumn  guibg='s:bg2
exe 'hi Folded guifg='s:comment' guibg='s:bg
exe 'hi FoldColumn guifg='s:comment' guibg='s:bg2
exe 'hi SignColumn guifg='s:comment' guibg='s:bg2
exe 'hi LineNr guifg='s:fg4' guibg='s:bg2
exe 'hi CursorLineNr guifg='s:fg' guibg='s:bg
exe 'hi VertSplit guifg='s:fg4' guibg='s:bg4
"exe 'hi MatchParen guifg='s:warning' guibg='s:warning2'  gui=underline'
hi MatchParen	  term=reverse  ctermfg=blue guibg=Blue

exe 'hi StatusLine   guifg='s:fg2' guibg='s:bg4' gui=bold'
exe 'hi StatusLineNC guibg='s:fg4' guifg='s:bg2

"hi StatusLine	    gui=bold guifg=blue guibg=white
"hi StatusLineNC   	guifg=white guibg=blue

exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel  guibg='s:bg3
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
exe 'hi Search   gui=underline'
exe 'hi Directory guifg='s:const
exe 'hi WildMenu guifg='s:str' guibg='s:bg

exe 'hi Boolean guifg='s:const
exe 'hi Character guifg='s:const
exe 'hi Comment guifg='s:comment'  gui=italic'
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Todo guibg='s:bg
exe 'hi Define guifg='s:keyword
exe 'hi DiffAdd guifg=#fafafa guibg=#123d0f gui=bold'
exe 'hi DiffDelete guibg='s:bg2
exe 'hi DiffChange  guibg=#151b3c guifg=#fafafa'
exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:type'  gui=italic'
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4' guibg='s:bg2
exe 'hi Number guifg='s:const
exe 'hi Operator guifg='s:keyword
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Statement guifg='s:keyword
exe 'hi StorageClass guifg='s:type'  gui=italic'
exe 'hi String guifg='s:str
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg2'  gui=inverse,bold'
exe 'hi Type guifg='s:type
exe 'hi Underlined   gui=underline'

" Neovim Terminal Mode
"let g:terminal_color_0 = s:bg
"let g:terminal_color_1 = s:warning
"let g:terminal_color_2 = s:keyword
"let g:terminal_color_3 = s:bg4
"let g:terminal_color_4 = s:func
"let g:terminal_color_5 = s:builtin
"let g:terminal_color_6 = s:fg3
"let g:terminal_color_7 = s:str
"let g:terminal_color_8 = s:bg2
"let g:terminal_color_9 = s:warning2
"let g:terminal_color_10 = s:fg2
"let g:terminal_color_11 = s:var
"let g:terminal_color_12 = s:type
"let g:terminal_color_13 = s:const
"let g:terminal_color_14 = s:fg4
"let g:terminal_color_15 = s:comment

" Ruby Highlighting
"exe 'hi rubyAttribute guifg='s:builtin
"exe 'hi rubyLocalVariableOrMethod guifg='s:var
"exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
"exe 'hi rubyInstanceVariable guifg='s:var
"exe 'hi rubyKeyword guifg='s:keyword
"exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
"exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
"exe 'hi rubyClass guifg='s:keyword' gui=bold'
"exe 'hi rubyNumber guifg='s:const

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin

" Go Highlighting
"exe 'hi goBuiltins guifg='s:builtin
"let g:go_highlight_array_whitespace_error = 1
"let g:go_highlight_build_constraints      = 1
"let g:go_highlight_chan_whitespace_error  = 1
"let g:go_highlight_extra_types            = 1
"let g:go_highlight_fields                 = 1
"let g:go_highlight_format_strings         = 1
"let g:go_highlight_function_calls         = 1
"let g:go_highlight_function_parameters    = 1
"let g:go_highlight_functions              = 1
"let g:go_highlight_generate_tags          = 1
"let g:go_highlight_operators              = 1
"let g:go_highlight_space_tab_error        = 1
"let g:go_highlight_string_spellcheck      = 1
"let g:go_highlight_types                  = 1
"let g:go_highlight_variable_assignments   = 1
"let g:go_highlight_variable_declarations  = 1

" Javascript Highlighting
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin

