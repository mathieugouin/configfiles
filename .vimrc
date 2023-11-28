"---------------------------------
" VIM Initialisation File
" ~/.vimrc
" Mathieu Gouin
" 2023-11-27 23:26:03
"---------------------------------

"--------------------
" Visual
"--------------------
set nocompatible "get out of horrible vi-compatible mode
set background=dark "we are using a dark background

"set termguicolors

filetype on "detect the type of file
syntax on "syntax highlighting on
set number "line number on
set showmatch "show matching brackets
set mat=4 "time to show matching brackets (tenth's of a sec.)
set showmode "show the current mode on the bottom of the screen
set showcmd "display incomplete commands
set ruler "show position
set laststatus=2 "always a status line
set cursorline "Highlight the screen line of the cursor
"Tabs related
set tabpagemax=15
"set showtabline=2
set shortmess=filmnrwxtToO

syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=2

"--------------------
" Search related
"--------------------
set incsearch "update the search result as you type, similar to /text in Firefox
set hlsearch "highlight search
set ignorecase "Ignore case in search patterns.
set smartcase "Override the 'ignorecase' option if the search pattern contains upper case characters.
set nowrapscan "Searches does not wrap around the end of the file.

"set iskeyword+=- "Include '-' as part of a keyword
set errorbells "don't make noise for errors
set visualbell "no beep, only a flash
set winminheight=0 "window minimum height = 0 lines, only the filename
set sidescroll=0 "Number of column to scroll horizontally when wrap is off, 0=center screen.
set listchars= "Removes the default eol $
"XXX not working on unix?
set listchars+=precedes:< "characters to show the continuation to the right of a line in nowrap mode
set listchars+=extends:> "characters to show the continuation to the left of a line in nowrap mode
"Note : the word wrap is not working properly with tab & spaces display.
"set list listchars+=trail:· "to show trailing spaces
"set list listchars+=tab:\|_ "to show tab character
"set list listchars+=tab:>\   "to show tab character
"color for the special tab & trailing spaces
highlight SpecialKey ctermfg=DarkGray guifg=Gray80
"XXX Test of long line : You can turn dumb automatic indenting on with set ai (or autoindent) and off with set noai (or noautoindent). This just starts a new line at an indent equal to the current one.You can enable smart indenting with set si - amongst other things this will automatically adjust indenting for braces and push hash comments to the first column. This second feature can be annoying but is easily disabled using inoremap # X^H# (use ctrl-v ctrl-h to enter the ^H). Vim also has a cindent mode that is very useful for c-like code and is highly configurable - see the help file indent.txt for details. You can try it out with set cindent.
"XXX This is some tabs							and trailing spaces                                

set linebreak "wrap at breakat, the default is OK
set wrap "wrapping long lines
set nostartofline "When off the cursor is kept in the same column (if possible) when scrolling.

set scrollopt+=hor "Scroll bind horizontally also

"When editing a file, always jump to the last known cursor position.
"Don't do it when the position is invalid or when inside an event handler
"(happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

set noequalalways "No setting equal height of the splitted windows.


"--------------------
" Backup related
"--------------------
set backup "make backup file
set writebackup "Make a backup before overwriting a file.
set backupext=.bak "backup extension
" Home folder
set backupdir=~/tmp/vim/ "where to put backup files
set directory=~/tmp/vim/ "where to put TMP files
" Windows Home
"set backupdir=E:\TEMP\vim\
"set directory=E:\TEMP\vim\
" CMC folder (Win7)
"set backupdir=C:\Temp\vim "where to put backup files
"set directory=C:\Temp\vim "where to put TMP files

set viminfo='1000,f1,\"500,:1000,@1000,/1000
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,tabpages,winpos,winsize

"--------------------
" Command related
"--------------------
set history=1000 " How many lines of history to remember

"TBD: Cygwin shell does not work well w/ vimdiff
"set shell=C:/cygwin64/bin/bash
"set shellcmdflag=--login\ -c
"set shellcmdflag=-c
"set shellxquote=\"


"------------------------
" Text formatting/editing
"------------------------
set expandtab "In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set autoindent "Copy indent from current line when starting a new line.
set smartindent "Do smart autoindenting when starting a new line.
set smarttab "When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set cindent "do c-style indenting
set tabstop=4 "Number of spaces that a <Tab> in the file counts for.
set softtabstop=4 "Number of spaces that a <Tab> counts for while performing editing.
set shiftwidth=4 "Number of spaces to use for each step of (auto)indent.
set backspace=indent,eol,start "Backspace over everything
set whichwrap=h,l,<,>,[,],b,s "wrap on every keys
"set fileformat=dos "unix file format
set formatoptions=tcroq "see :h fo-table
set textwidth=0  "disable
"set textwidth=80  "break line when inserting
set foldcolumn=1  "Show fold indication 1 column width
set cinkeys-=0#
set nrformats=hex  "Hex only incrementing

"------------------------
" Print related
"------------------------
set printoptions+=number:y,syntax:y,left:1cm,right:1cm,top:0.5in,bottom:0.5in
"set printfont=Bitstream_Vera_Sans_Mono:h8
set printfont=Courier_New:h8

"XXX Header does not work...
"set printheader="%<%f%h%w%r%m%=Page %N"
"set printheader="%F Page %N"

"------------------------
" Key mapping
"------------------------

"gf to split the new file
nnoremap gf     :sp <cfile><CR>

"up/down move by visible line when wrap is on
map <Up>        gk
map <Down>      gj

" horizontal scroll
nmap <M-Right>  zl
nmap <M-Left>   zh

" vertical scroll
nmap <M-Up>     
nmap <M-Down>   

"Yank to the end of the line (as D)
map Y       y$

"up/down buffer and maximize (usefull when gv -o *.c)
nnoremap <C-k>  <C-w>k<C-w>_
nnoremap <C-j>  <C-w>j<C-w>_

"next/prev window (usefull when gv *.c)
nmap <C-l>  :next<CR>
nmap <C-h>  :prev<CR>

"Enable/Disable syntax highlighthing.
nmap <F4>   :if exists("syntax_on") <Bar> syntax off <Bar> else <Bar> syntax on <Bar> endif <CR>

"Enable/Disable line wrap.
nmap <F5>   :set wrap!<CR>

"To cycle through panes of split windows without maximizing like <C-k>, <C-j>
nmap <F6>   <C-W>w
nmap <S-F6> <C-W>W

"append time
nmap <F7>   a<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>

"insert debugging flag
nmap <F8>       a<!-- TBD MGouin:  -->hhhi
"nmap <F8>       a/* TBD MGouin:  */hhi
"nmap <F8>       a/* TBD MGouin <Esc><F7>a */

"Must have two buffer a and b.  This will diff then in a separate VIM diff.  Similar to F9 in MKS.
"nmap <F9> :sp C:\Temp\vim\_tmp1.diffggVGd"aP:wq:sp C:\Temp\vim\_tmp2.diffggVGd"bP:wq:!start "C:\Program Files\Beyond Compare\Beyond Compare 2\us\BC2.exe" "C:\Temp\vim\_tmp1.diff" "C:\Temp\vim\_tmp2.diff"

"related to linediff.vim
"let g:linediff_indent = 1
vmap <F9>       :Linediff<CR>
nmap <S-F9>     :diffupdate<CR>
nmap <C-S-F9>   :LinediffReset<CR>

"autocmd VimEnter * if &diff | execute 'windo set wrap' | endif
"autocmd FilterWritePre * if &diff | setlocal wrap | endif

"Removes in the whole file trailing spaces and tabs
nmap <C-F9>   :%s/\s\+$//<CR>

"Convert vertical block // to /** ... * ... */   Must have vertical selected before.
vmap <F11>  myomxc * O0c$/**'yjOi */0j

"Toggle scroll bind (:h scb) for the active window.  Usefull to :vs then scroll to windows
nmap <F12>  :set scb!<CR>

"Alt+C: Toggle column highlight
nmap <M-c>  :set cursorcolumn!<CR>

"Alt+L: Toggle line highlight
nmap <M-l>  :set cursorline!<CR>

"Alt+N: Toggle line number
nmap <M-n>  :set number!<CR>

" Diff change next/previous as in KDiff3
nmap <C-Down> ]c
nmap <C-Up>   [c

"------------------------
" For NETRW
"------------------------
"let g:netrw_fastbrowse=2
let g:netrw_fastbrowse=0

let g:netrw_browse_split=0
let g:netrw_sort_sequence='[\/]$,*'

"For diff files.
set diffopt=filler,vertical,context:1000000,foldcolumn:1,iwhite

"set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

"TBD this does not work, but the augroup section does...
"syn keyword myTodo contained    TBD WTF XXX
"hi def link myTodo      Todo

" Partially working...
"augroup vimrc_todo
"    au!
"    au Syntax * syn keyword MyTodo TBD WTF containedin=.*Comment,vimCommentTitle
"augroup END
"hi def link MyTodo Todo
