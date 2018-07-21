set termguicolors
set background=dark
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

syntax on

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

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux'

call plug#end()
