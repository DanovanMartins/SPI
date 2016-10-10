"        ________ ++     ________
"       /VVVVVVVV\++++  /VVVVVVVV\
"       \VVVVVVVV/++++++\VVVVVVVV/
"        |VVVVVV|++++++++/VVVVV/'
"        |VVVVVV|++++++/VVVVV/'
"       +|VVVVVV|++++/VVVVV/'+
"     +++|VVVVVV|++/VVVVV/'+++++
"   +++++|VVVVVV|/VVVVV/'+++++++++
"     +++|VVVVVVVVVVV/'+++++++++
"       +|VVVVVVVVV/'+++++++++
"        |VVVVVVV/'+++++++++
"        |VVVVV/'+++++++++
"        |VVV/'+++++++++
"        'V/'   ++++++
"                 ++
"
" Vundle Plugin Manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'JetBrains/ideavim'

"Themes
Plugin 'tomasr/molokai'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'flazz/vim-colorschemes'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'lepture/vim-jinja'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-startify'
Plugin 'ryanoasis/vim-devicons'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-scripts/mru.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'lervag/vimtex'
Plugin 'qpkorr/vim-bufkill'

"""""""""""""""""""""
" Snipmat
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional
Plugin 'honza/vim-snippets'


" Plugin 'kmyk/sdl2.vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
" Plugin 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Plugin 'vim-scripts/Conque-Shell'
" Plugin 'vim-airline/vim-airline'
" Plugin 'powerline/powerline'
" " END HERE
" Plugin 'orenhe/pylint.vim'
" Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'bling/vim-airline'       " UI statusbar niceties
" Plugin 'chriskempson/base16-vim'
"Plugin 'skammer/vim-css-color'
"Plugin 'roman/golden-ratio'
" Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'elixir-lang/vim-elixir'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'othree/html5.vim'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'kevinw/pyflakes-vim'
" Plugin 'vim-scripts/pep8'
" Plugin 'vim-scripts/Pydiction'
call vundle#end()            " required
filetype plugin indent on    " required
let g:webdevicons_enable_nerdtree = 1
let g:airline_powerline_fonts = 1
set encoding=utf8

" Vim Air Line
"https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='hybridline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2               " enable airline even if no splits


set number " line numbering
set autoread
set t_Co=256 " Force 256 colors

set t_ut= " improve screen clearing by using the background color
set background=light
syntax enable
set enc=utf-8

set cul
set cuc
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

nnoremap <cr> :nohlsearch<cr>

nnoremap J mzJ`z
set expandtab
set autoindent
set showcmd
set noswapfile
set encoding=utf-8
set scrolloff=3
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*.pyc

" Set dark color
colorscheme molokai
set background=dark

" Set light color
" set t_Co=256   " This is may or may not needed.
" set background=light
" colorscheme PaperColor


" Set autocomplete form
set completeopt=menuone,longest,preview

"--- python formatting help ---
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable omni completion.
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
" autocmd FileType vim set omnifunc=syntaxcomplete#Complete
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"""""""""""""""""""""""""""""""""""""""""""""'
"    ==>> Show a vertical line on line 80
"""""""""""""""""""""""""""""""""""""""""""""'
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def

let g:miniBufExplTabWrap = 9

" Syntasttic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" AutoClose
imap { {}<left>
imap ( ()<left>
imap [ []<left>
imap < <><left>

if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

" Move lines like in atom.
nnoremap <c-s-j> :m .+1<CR>==
nnoremap <c-s-k> :m .-2<CR>==
inoremap <c-s-j> <Esc>:m .+1<CR>==gi
inoremap <c-s-k> <Esc>:m .-2<CR>==gi
vnoremap <c-s-j> :m '>+1<CR>gv=gv
vnoremap <c-s-k> :m '<-2<CR>gv=gv

let mapleader=","

map <F9> :NERDTreeToggle <cr>
map <leader>t :terminal<cr>
map <leader>l :w <bar> :bn<cr>
map <leader>j :w <bar> :bp<cr>
map <leader>k :w<cr>
map <leader>b :Bclose<cr>:tabclose<cr>gT
" map <leader>b :bufdo bd<cr>
map <leader>ç :x<cr>
map <leader>w :BD<cr>
map <leader>q :q!<cr>
map <leader>tex :VimtexCompile<cr>
" command Vcs sp ~/.vim-cheatsheet/cheatsheet.md

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
let g:airline_powerline_fonts = 1

let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
""  => Vim Latex live previwe
""""""""""""""""""""""""""""""
" let g:livepreview_previewer = 'evince'


" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

autocmd VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')


" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
let g:startify_bookmarks = [
  \ '~/.vimrc',
  \ '~/.bashrc',
  \ ]


let g:startify_custom_header = [
  \ '                                _________  __  __',
  \ '            __                 /\_____   \/\ \/\ `\',
  \ '   __   __ /\_\    ___ ___     \/____/   /\ \ \ \  \',
  \ '  /\ \ /\ \\/\ \ /` __` __`\        /   /  \ \ \_\  \__',
  \ '  \ \ \_/ / \ \ \/\ \/\ \/\ \      /   / __ \ \___   __\',
  \ '   \ \___/   \ \_\ \_\ \_\ \_\    /\__/ /\_\ \/___/\_\_/',
  \ '    \/__/     \/_/\/_/\/_/\/_/    \/_/  \/_/      \/_/',
  \ '',
  \ '  ======================================================',
  \ '',
  \ ]

let g:startify_custom_footer = [
  \ '',
  \ '  ======================================================',
  \ '',
  \ '  Copyright Danovan, 2016'
  \ ]


let g:startify_list_order = [
    \ ['   My most recently:'],
    \ 'files',
    \ ['   Sessions:'],
    \ 'sessions',
    \ ['   Current Dir:'],
    \ 'dir',
    \ ['   These are my bookmarks:'],
    \ 'bookmarks',
    \ ]
"
" let g:startify_session_autoload = 1
" let g:ctrlp_reuse_window = 'startify'
let g:startify_files_number = 5
let g:startify_dir_number = 5
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 1
" let g:startify_relative_path = 1
" " let g:startify_session_dir = '~/.vim/session'
"
" " let g:startify_skiplist = [
" "   \ 'COMMIT_EDITMSG',
" "   \ $VIMRUNTIME .'/doc',
" "   \ 'bundle/.*/doc',
" "   \ '\.DS_Store'
" "   \ ]
" "
" "
"
" " augroup startify
" "   autocmd!
" "   " Hacky way to disable Powerline in Startify
" "   autocmd BufNew * set laststatus=2|highlight CursorLine guibg=NONE
" "   autocmd FileType startify set laststatus=0|highlight CursorLine guibg=#000000|setlocal cursorline
" " augroup END

" Put this in your vimrc:
" >
    " autocmd VimEnter *
    "             \   if !argc()
    "             \ |   Startify
    "             \ |   NERDTree
    "             \ |   wincmd w
    "             \ | endif
