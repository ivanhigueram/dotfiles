set nocompatible              " be iMproved, required
set t_Co=256
"set background=dark
"colorscheme solarized

"Pencil bundle config
augroup pencil
      autocmd!
      autocmd FileType markdown,mkd call pencil#init({'wrap': 'hard', 'autoformat': 1})
                                \ | call lexical#init()
augroup END

let g:pencil#textwidth = 80

set statusline=%<%f\ %h%m%r%w\ \ %{PencilMode()}\ %=\ col\ %c%V\ \ line\ %l\,%L\ %P
set rulerformat=%-12.(%l,%c%V%)%{PencilMode()}\ %P

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Write in vim with style
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-lexical'
"Colors Plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
"Sintax Vundle
Plugin 'vim-syntastic/syntastic'
Plugin 'jpalardy/vim-slime'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
"
"
"" enable syntax highlighting
syntax enable

" show line numbers
set number
"
" " set tabs to have 4 spaces
set ts=4
"
" " indent when moving to the next line while writing code
set autoindent
"
" " expand tabs into spaces
set expandtab
"
" " when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
"
" " show a visual line under the cursor's current line
set cursorline
"
" " show the matching part of the pair for [] {} and ()
set showmatch
"
" " enable all Python syntax highlighting features
let python_highlight_all = 1
"
set nu
"
"Statusline (airline bundle) config
let g:airline_powerline_fonts = 1 
let g:airline#extensions#branch#enabled = 1
let g:tmuxline_poweline_separators = 0

"Sintax config options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:aiirline#extensions#syntastic#error_symbol = 'E:'
