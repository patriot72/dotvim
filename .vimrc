" Vim Configuration S. Maass
"Standard Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Standard Stuff 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"execute pathogen#infect()
syntax on
"filetype plugin indent on
filetype off
set nocompatible
set autoindent
set shiftwidth=1
set showmode
set showmatch
set showcmd
set ruler
set nojoinspaces
set cpo+=$
set whichwrap=""
set modelines=0
set mousehide
set hlsearch
set clipboard+=unnamed
set hidden
set cmdheight=2 
set number
"
"VUNDLE CONFIG
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin NERDTREE
Plugin 'https://github.com/scrooloose/nerdtree.git'
"Plugin Easymotion
Plugin 'https://github.com/easymotion/vim-easymotion.git'
"Plugin vim-surround
Plugin 'https://github.com/tpope/vim-surround.git'
"Plugin vim-repeat
Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin vim-commenentary
Plugin 'tpope/vim-commentary'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=terminus:h13:cDEFAULT
set shell=/bin/bash
set t_Co=256
colorscheme xoria256
"colorscheme solarized
set background=dark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mappings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hilfe-Sprünge auf F11 setzen
map <F11> <C-]>
"Öffne meine vimrc 
nmap <silent> ,ev :e ~/.vimrc<CR>
" Lade meine vimrc neu
nmap <silent> ,sv :so ~/.vimrc<CR>
" Backqoutes to jump to a mark
nmap <silent> à `a 
nmap <silent> è `e
nmap <silent> ì `i
nmap <silent> ò `o
nmap <silent> ù `u
" Use the arows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>
"Nerdtree öfnnen mit CTRL+n
map <C-n> :NERDTreeToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"EasyMotion
let g:EasyMotion_do_mapping = 0 "Disable default mappings
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>j <Plug>(easymotion-k)
"FuzzyFinder
nmap ,f :FuzzyFinderFileWithCurrentBufferDir<CR>
nmap ,b :FuzzyFinderBuffer<CR>
nmap ,t :FuzzyFinderTaggedFile<CR>
" vimwiki settings
" Wiki files location:
" let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'path_html': '~/Dropbox/vimwiki/html/', 'auto_export': 1, 'maxhi': 0}]
" enable vimwiki folding
" let g:vimwiki_folding=0
" enable list subitems folding
" let g:vimwiki_fold_lists=1
" use firefox as browser
" let g:vimwiki_browsers=['/usr/bin/firefox-aurora']
