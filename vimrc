set nocompatible               " be iMproved
filetype off                   " required!

set nowrap

" recommended configurations for powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" Map Ctrl+[hjkl] to changing windows instead of needing to
" press Ctrl+w and then [hjkl]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" open new splits to right and below
set splitbelow
set splitright

" Highlight matching parentheses
set showmatch

" Set searching to case-insensitive if the pattern is only
" lowercase, but case-sensitive otherwise
set ignorecase
set smartcase

" Highlight search times and show the matches as you type
" set hlsearch " this can sometimes be annoying
set incsearch

" Set relative numbers only when focused
:au FocusGained * :set relativenumber
:au FocusLost * :set number

" Set colors
syntax enable
set background=dark
"colorscheme crayon
"colorscheme material
"colorscheme solarized
"colorscheme Desert
"colorscheme railscasts
"colorscheme Tomorrow "white background
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night-Blue

" Set tab width
set tabstop=2
set shiftwidth=2
set expandtab

" Remove trailing whitespace upon save
autocmd BufWritePre * :%s/\s\+$//e

" Turn on auto-indenting and set it to copy previous
" indentation
set autoindent
set copyindent

" Required for vim-powerlinE
let g:Powerline_symbols = 'fancy'

" Kills beeps
set noeb vb t_vb=

" for terminal
set t_Co=256

" cursoer shape in iTerm2
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" mappings
map <Leader>r :set relativenumber!<CR>
map <Leader>e :set number<CR>
map <Leader>n :set nonumber<CR>

" map vertical resizing
map <Leader>v4 :exe "vertical resize 400"<CR>
map <Leader>v3 :exe "vertical resize 300"<CR>
map <Leader>v2 :exe "vertical resize 200"<CR>
map <Leader>v1 :exe "vertical resize 100"<CR>
map <Leader>vm :exe "vertical resize 50"<CR>

" map pasting
map <Leader>p "0p<CR>

"let g:rspec_command = "!spring rspec {spec} --format documentation"
let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec} --format documentation\n")'

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
" map <Leader>e :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 " let Vundle manage Vundle
 " required!
 Plugin 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'tpope/vim-rails.git'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'https://github.com/kien/ctrlp.vim'
 Plugin 'rking/ag.vim'
 Plugin 'kchmck/vim-coffee-script'
 Plugin 'thoughtbot/vim-rspec'
 Plugin 'jgdavey/tslime.vim'

call vundle#end()
filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
