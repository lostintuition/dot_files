set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9' "

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git' "

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin' "

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'ervandew/supertab'

Bundle 'chriskempson/base16-vim'

Bundle 'tomasr/molokai'

Bundle 'altercation/vim-colors-solarized'

Bundle 'vim-scripts/lilypink'

Bundle 'nanotech/jellybeans.vim'

"Plugin 'scrooloose/syntastic'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'edkolev/tmuxline.vim'

Bundle 'mileszs/ack.vim'

Bundle 'chaquotay/ftl-vim-syntax'

Plugin 'tpope/vim-endwise'

Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-unimpaired'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'ssh://git.amazon.com:2222/pkg/VimIon.git'

let mapleader = "\<Space>"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" using Source Code Pro
set anti enc=utf-8
set background=dark
syntax on
map! fj <Esc> " map fj to Esc

set backspace=indent,eol,start
:set number

"Check Syntax on Save
"let g:syntastic_check_on_wq=0

"Syntastic in Brazil environment is SLOW, so this can be disabled if you don't want to wait +30s to get it to work.
"let g:syntastic_check_on_open=1
"let g:syntastic_java_javac_config_file_enabled=1

"Syntastic Checkstyle stuff, had to modify our defaults because eclipse...
"let g:syntastic_java_checkstyle_classpath = "/home/jamlew/checkstyle-5.5/checkstyle-5.5-all.jar"
"let g:syntastic_java_checkstyle_conf_file = "/home/jamlew/checkstyle-rules/checkstyle-rules-v5.xml"
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '!'

:set hlsearch

:set list
:set listchars=tab:>.,trail:.,extends:#,nbsp:.
set laststatus=2
set t_Co=256


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_eighties'
let g:airline#extensions#branch#enabled = 1
let g:airline_section_b = " %{fugitive#head()}"
" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
:set expandtab


autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype jsp setlocal ts=2 sts=2 sw=2
autocmd Filetype tag setlocal ts=2 sts=2 sw=2
autocmd Filetype js setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype xml setlocal ts=2 sts=2 sw=2
autocmd Filetype sdl setlocal ts=2 sts=2 sw=2

colorscheme lilypink
"colorscheme jellybeans

highlight nonText ctermbg=NONE
highlight Normal ctermbg=NONE
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 40

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

nnoremap <Leader>w :w<CR>

set shortmess+=A

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.swo,eclipse-bin/*

highlight clear SignColumn

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
