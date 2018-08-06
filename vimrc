" autocmd vimenter * NERDTree
set background=dark
set encoding=utf-8     
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible              " be iMproved, required
filetype off                  " required
"set numberwidth=5
set number
set relativenumber

syntax on " Enable syntax highlighting.
syntax enable " Set color scheme that I like.

set backspace=indent,eol,start

set hidden " non cómpre gardar para ir a outro buffer

set smartindent " Automatically indent when adding a curly bracket, etc.
" Tabs should be converted to a group of 4 spaces.  " This is the official Python convention
" http://www.python.org/dev/peps/pep-0008/
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent "p.e.dentro dunha función

set scrolloff=999 " Minimal number of screen lines to keep above and below the cursor.
set ruler " Show line number, cursor position.
set showcmd " Display incomplete commands.

set hlsearch "marcar o que busco
set incsearch " Search as you type.
set ignorecase " Ignore case when searching.

"Vim no flashing
set noerrorbells
set visualbell
set t_vb=

set wildmenu " liña encima cos comandos para autocompletar

" """""""""""""" PLUGINS"""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.

" eu mesma

" Coloríns
"Plugin 'sjl/badwolf'
"Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'

"Barra de abaixo
Plugin 'itchyny/lightline.vim'
set laststatus=2
"Na barra de abaixo xa conta o modo no que estou 
set noshowmode

"  Ver sistema de ficheiros e acortar
"fzf is a general-purpose command-line fuzzy finder
Plugin 'junegunn/fzf'
Plugin 'The-NERD-tree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'tmhedberg/SimpylFold'
"Plugin 'mattn/emmet-vim'

"Plugin 'tpope/vim-commentary'

""""""""""""""Writting
"Plugin 'reedes/vim-pencil'
Plugin 'LanguageTool'
"Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/goyo.vim'

""""""""""" PYTHON
"Asynchronous Lint Engine
Plugin 'w0rp/ale'                "Caza erros
Plugin 'davidhalter/jedi-vim'   "Autocompleta
Plugin 'ervandew/supertab'

"""""""" MARKDOWN
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'tpope/vim-liquid'       " Jekyll
Plugin 'tpope/vim-surround'

"""""""" GIT
Plugin 'airblade/vim-gitgutter'
set updatetime=100
let g:gitgutter_terminal_reports_focus=0

Plugin 'tpope/vim-fugitive' " plugin on GitHub repo

" All of your Plugins must be added before the following line
Plugin 'ryanoasis/vim-devicons'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" """""""""""""" PLUGINS"""""""""""""""""""


colorscheme gruvbox "coloríns

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

"" NERDTree configuration
"et g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
"et g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
"et g:nerdtree_tabs_focus_on_files=1
"et g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
"et g:NERDTreeWinSize = 50

" modifica nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
""let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 20
"
"augroup ProjectDrawer
"  autocmd!
 " autocmd VimEnter * :Vexplore
"augroup END


"Non ter que premer ESC para cambiar de modo
inoremap ññ <ESC>

"navegar entre ficheiros:pasar dalgunhas extensións
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

"moving between buffers: normal mode
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"moving between buffers: insert modh:::e
inoremap <C-h> <C-w>h
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

" To insert timestamp, press F3.
"nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
"imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" To save, press ctrl-s.
"nmap <c-s> :w<CR>
"imap <c-s> <Esc>:w<CR>a


"" Python
nnoremap <F9> :echo system('python3 "' . expand('%') . '"')<cr>
""nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
" Abro corchete e pecha só e ponme no medio
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

au BufNewFile,BufRead *.py
    \ set tabstop=4  |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let g:jedi#use_splits_not_buffers = "left"
""let g:jedi#auto_close_doc = 1  " close preview window after completion
let g:jedi#show_call_signatures = "2"

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

"""" WRITING """"
"Cause linebreaks in wrapped lines of text to break at normal word boundaries
"rather than cutting words in half. útil en Goyo
set wrap linebreak nolist 
