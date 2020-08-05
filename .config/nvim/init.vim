set number
set ruler
set showmatch
set hlsearch
set hidden
set incsearch
set backspace=indent,eol,start
set scrolloff=5
set smartcase
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" NerdTree
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

" FZF
map <silent> <leader>ff :Files<CR>
map <silent> <leader>fb :Buffers<CR>

" Whitespace management
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

function! Trim()
  %s/\s*$//
  ''
endfunction
command! -nargs=0 Trim :call Trim()
map <silent> <Leader>cw :Trim<CR>

" Clear highlighting
map <silent> <LocalLeader>nh :nohls<CR>

" Comments
map <silent> <LocalLeader>cc :TComment<CR>

" Vimux
let g:VimuxUseNearestPane = 1
let test#strategy = "vimux"
map <silent> <LocalLeader>vp :VimuxPromptCommand<CR>

" Ruby Settings
autocmd FileType ruby runtime ruby.vim

" Typescript support
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'
Plug 'dewyze/vim-ruby-block-helpers'
Plug 'tomtom/tcomment_vim'
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'napcs/vim-mycontrast'
Plug 'mattn/emmet-vim'
Plug 'tmhedberg/matchit'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Quramy/vim-js-pretty-template'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Color settings
syntax on
set termguicolors
set background=dark
colorscheme mycontrast

" vim-go dependencies
filetype plugin indent on

source $HOME/.config/nvim/coc.vim
