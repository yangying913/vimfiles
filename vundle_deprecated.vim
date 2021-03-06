"Vundle
filetype off
let s:bundle = expand('<sfile>:p:h') . '/bundle'
exec 'se rtp+=' . s:bundle . '/Vundle.vim'
call vundle#begin(s:bundle)
Plugin 'gmarik/Vundle.vim'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'neocomplcache'
Plugin 'Markdown-syntax'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'jeroenbourgois/vim-actionscript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'gregsexton/MatchTag'
"Plugin 'valloric/MatchTagAlways'
"Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'lepture/vim-jinja'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
"Plugin 'marijnh/tern_for_vim'
Plugin 'elzr/vim-json'
Plugin 'digitaltoad/vim-pug'
Plugin 'posva/vim-vue'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'othree/yajs.vim'
"Plugin 'othree/es.next.syntax.vim'
"Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'leafgarland/typescript-vim'

" Go
Plugin 'fatih/vim-go'

" UI
Plugin 'bling/vim-airline'
"Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/ListToggle'

" NERD tree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on

let g:indent_guides_enable_on_vim_startup = 1
let NERDTreeShowHidden = 1
let g:jsx_ext_required = 0
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v(\/|^)(bower_components|node_modules)$',
      \ }
"let g:ackprg = 'ag --vimgrep -s'

" for vim-javascript
se cino=:0
" Remove dots to avoid indentation for chained function calls
let g:javascript_opfirst = '\%([<>,?^%|*&]\|\/[^/*]\|\([-:+]\)\1\@!\|=>\@!\|in\%(stanceof\)\=\>\)'
let g:javascript_continuation = '\%([<=,?/*^%|&:]\|+\@<!+\|-\@<!-\|=\@<!>\|\<in\%(stanceof\)\=\)'

autocmd VimEnter * let g:airline_section_b = '%{strftime("%c")}'
