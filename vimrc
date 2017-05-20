set nocompatible               " be iMproved
filetype off                   " required!

set nowrap

" recommended configurations for powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

let mapleader = "\<Space>"

" Map Ctrl+[hjkl] to changing windows instead of needing to
" press Ctrl+w and then [hjkl]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" open new splits to right and below
set splitbelow
set splitright

" Make backspace work in insert mode
set backspace=indent,eol,start

" Highlight matching parentheses
set showmatch

" Set searching to case-insensitive if the pattern is only
" lowercase, but case-sensitive otherwise
set ignorecase
set smartcase

" Highlight search times and show the matches as you type
" set hlsearch " this can sometimes be annoying
set incsearch

" Set fold options
" set foldmethod=syntax
" set foldlevelstart=20 " leave file unfolded when opening
" nnoremap <Leader>f za
" nnoremap <Leader>F zMzv

" Set text width to 80 characters for markdown
au BufRead,BufNewFile *.md setlocal textwidth=80
" Set conceal level to 2 for markdown (to hide links, italics, etc)
au BufRead,BufNewFile *.md set conceallevel=2


" Set colors
syntax enable
set background=dark
"colorscheme crayon
"colorscheme material
colorscheme solarized
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

" system clickboard yank and paste
map <Leader>p "+p<CR>
map <Leader>y "+y<CR>

" testing conveniences
let test#strategy = "tslime"
let g:tslime_always_current_session = 1 "Assume current session
let g:tslime_always_current_window = 1 "Assume current window
"let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec} --format documentation\n")'
"

" Use AG for ctrl-p
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


" vim-test mappings
nmap <Leader>t :TestFile<CR>
nmap <Leader>s :TestNearest<CR>
nmap <Leader>l :TestLast<CR>
nmap <Leader>T :TestSuite<CR>

" RSpec.vim mappings => using vim-test
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>

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
" giving vim-test a try to use with elixir
" Plugin 'thoughtbot/vim-rspec'
 Plugin 'janko-m/vim-test'
 Plugin 'jgdavey/tslime.vim'
 Plugin 'elixir-lang/vim-elixir'
 Plugin 'christoomey/vim-tmux-navigator'
 Plugin 'lambdatoast/elm.vim'
 Plugin 'cakebaker/scss-syntax.vim'
 Plugin 'jlanzarotta/bufexplorer'
 Plugin 'tpope/vim-surround'
 Plugin 'christoomey/vim-tmux-runner'
 Plugin 'godlygeek/tabular.git'
 Plugin 'plasticboy/vim-markdown'


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
