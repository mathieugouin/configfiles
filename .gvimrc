"---------------------------------
" GVIM Initialisation File
" ~/.gvimrc
" Mathieu Gouin
" 2007-01-24 14:10:22
"---------------------------------

"Default window size when openning (in character position)
set lines=55 columns=160
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
"Default window position in pixel
"winpos 10 10

"Set the X11 font to use.
"Use the command : $xlsfonts to list the available fonts.

"abcdefghijklmnopqrstuvwxyz
"ABCDEFGHIJKLMNOPQRSTUVWXYZ
"0123456789!@#$%^&*()_+|~[]{}`x`  'x';

":set guifont=* "To display a list of available fonts.
" *** MATROX (unix)
"set guifont=lucidasans-typewriter-12
"set guifont=-misc-fixed-medium-r-normal--13-100-100-100-c-80-iso8859-1

" *** CMC
"set guifont=Bitstream_Vera_Sans_Mono:h8,Deja_Vu_Sans_Mono_Book:h9
"set guifont=courier:h10 "The font used to display.

" *** HOME (linux)
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10,Deja\ Vu\ Sans\ Mono\ 10
"set guifont=monospace\ 10
"set guifont=8x13bold
"set guifont=9x15bold
"set guifont=7x14bold
"set guifont=7x13bold

set guioptions=abgimrtT "check h: guioptions ;)

"set background=light "we are using a light background
"set background=dark "we are using a dark background
" For default color scheme: /usr/share/vim/vim80/colors
"colorscheme industry
"colorscheme koehler
"colorscheme codedark
colorscheme mgouin1

"highlight LineNr guifg=DarkGray
"highlight Search guibg='Purple' guifg=#FFFFFF
"highlight String guifg=#FF5733
"highlight Visual guibg=#000000
"highlight Pmenu guifg=#000000 guibg=#808080



set mouse=a "mouse in all modes

"-----------------------
" Set nice colors
"-----------------------
"Black text on white BG
"highlight Normal guibg=White guifg=Black

"White text on black BG
"highlight Normal guibg=Black guifg=White

" Cursor is green, Cyan when ":lmap" mappings are active
" Constants are not underlined but have a slightly lighter background
"highlight Normal guibg=grey90
"highlight Normal guibg=black
"highlight Cursor guibg=Green guifg=NONE
"highlight lCursor guibg=Cyan guifg=NONE
"highlight NonText guibg=grey80
"highlight Constant gui=NONE guibg=grey95
"highlight Special gui=NONE guibg=grey95

" Darker BG for bright LCD screen
"highlight Visual guifg=NONE guibg=grey80

set vb t_vb=

"syntax on "syntax highlighting on
