set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  "highlight Normal guibg=grey90
  "highlight Cursor guibg=Green guifg=NONE
  "highlight lCursor guibg=Cyan guifg=NONE
  "highlight NonText guibg=grey80
  "highlight Constant gui=NONE guibg=grey95
  "highlight Special gui=NONE guibg=grey95

endif

"se go=gmrLtTe
se go-=m
se go-=T
se novb t_vb=    " remove visual bell, must be reset in _gvimrc

" The colors look weird in console
colo torte

if has("gui_gtk2")
  se gfn=DejaVu\ Sans\ Mono\ 11
elseif has("mac")
  se gfn=Monaco:h14
else
  "se gfn=Consolas:h12:cANSI
  se gfn=dejavu_sans_mono:h12
endif
