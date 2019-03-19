call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tlib_vim' | Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'janko-m/vim-test'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug '/usr/local/opt/fzf'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'chriskempson/base16-vim'

" ruby and rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" go
Plug 'fatih/vim-go'

" lixir
Plug 'elixir-editors/vim-elixir'

call plug#end()

let base16colorspace=256
set background=dark
colorscheme base16-ocean

syntax enable

let mapleader=" "

" FZF
map <leader>f :FZF<cr>

" the_silver_searcher
let g:ackprg = 'ag --vimgrep'
map <leader>s :Ag<cr>

" Buffer nav
map <leader>n :bp<cr>
map <leader>m :bn<cr>
map <leader>c :bd<cr>

" toggle word wrap
map <leader>w :set wrap!<cr>

" toggle word wrap
map <leader>w :set wrap!<cr>

" run tests
map <leader>t :TestNearest<cr>

" nerdTree
map <leader>d :NERDTreeToggle<cr>

set nowrap
set number
set showmatch
set ignorecase
set smartcase
set hlsearch
set cursorline

set tabstop=2
set shiftwidth=2
set shiftround
set softtabstop=2
set smarttab
set expandtab

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak
set title
set visualbell
set noerrorbells

set splitright

set updatetime=100

filetype on
filetype indent on
filetype plugin on

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" lightline
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" ctags
set tags=tags

highlight Normal ctermbg=none
highlight NonText ctermbg=none
