" autocmd vimenter * NERDTree
set encoding=utf-8     
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible              " be iMproved, required
filetype off                  " required
set numberwidth=5
set number
set relativenumber

syntax on " Enable syntax highlighting.
syntax enable " Set color scheme that I like.

set smartindent " Automatically indent when adding a curly bracket, etc.
" Tabs should be converted to a group of 4 spaces.  " This is the official Python convention
" http://www.python.org/dev/peps/pep-0008/
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set scrolloff=999 " Minimal number of screen lines to keep above and below the cursor.
set ruler " Show line number, cursor position.
set showcmd " Display incomplete commands.

set incsearch " Search as you type.
set ignorecase " Ignore case when searching.

"Vim no flashing
set noerrorbells
set visualbell
set t_vb=

set wildmenu " Show autocomplete menus.

" """""""""""""" PLUGINS"""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" eu mesma

" Coloríns
"Plugin 'sjl/badwolf'
"Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'

"  Ver sistema de ficheiros e acortar
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'The-NERD-tree'
"Plugin 'tmhedberg/SimpylFold'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'mattn/emmet-vim'


"Barra de abaixo
Plugin 'itchyny/lightline.vim'
set laststatus=2
"Na barra de abaixo xa conta o modo no que estou 
set noshowmode

"Writting
"Plugin 'reedes/vim-pencil'
Plugin 'LanguageTool'
"Markdown
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'tpope/vim-liquid' " Jekyll
Plugin 'tpope/vim-surround'
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

" To insert timestamp, press F3.
"nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
"imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" To save, press ctrl-s.
"nmap <c-s> :w<CR>
"imap <c-s> <Esc>:w<CR>a



"Non ter que premer ESC para cambiar de modo
inoremap jj <ESC><CR>

"navegar entre ficheiros:pasar dalgunhas extensións
set wildignore+=*/tmp/*,*.so,*.swp,*.zip


" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
