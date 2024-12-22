" ----------------------------------------
" General Settings
" ----------------------------------------
syntax on                        " Enable syntax highlighting
set number                       " Show line numbers
set cursorline                   " Highlight the current line
set showcmd                      " Show commands as you type
set wildmenu                     " Enable command-line completion
set lazyredraw                   " Optimize redrawing for better performance
set updatetime=300               " Faster CursorHold events
set encoding=utf-8               " Ensure proper character encoding

" ----------------------------------------
" Key Mappings
" ----------------------------------------
" Map jk to exit insert mode
inoremap jk <Esc>

" Leader key
let mapleader = ","

" Copy/Paste with system clipboard
nnoremap <leader>y "+y          " Yank to system clipboard
vnoremap <leader>y "+y          " Visual yank to clipboard
nnoremap <leader>p "+p          " Paste from system clipboard
vnoremap <leader>p "+p

" Quick save and quit
nnoremap <leader>w :w<CR>       " Save file
nnoremap <leader>q :q<CR>       " Quit
nnoremap <leader>x :wq<CR>      " Save and quit

" Window navigation
nnoremap <C-h> <C-w>h           " Move to the left window
nnoremap <C-j> <C-w>j           " Move to the window below
nnoremap <C-k> <C-w>k           " Move to the window above
nnoremap <C-l> <C-w>l           " Move to the right window

" Better indenting
vnoremap < <gv                 " Keep selection when shifting left
vnoremap > >gv                 " Keep selection when shifting right

" Reselect after pasting
nnoremap <leader>v "0p

" ----------------------------------------
" Visual Settings
" ----------------------------------------
set background=dark              " Preferred background for colorschemes
colorscheme desert               " Set a default colorscheme
set termguicolors                " Enable true colors
set guicursor=n-v-c:block-Cursor " Better block cursor in normal mode

" ----------------------------------------
" Clipboard Integration
" ----------------------------------------
set clipboard+=unnamedplus       " Use system clipboard

" ----------------------------------------
" Searching
" ----------------------------------------
set ignorecase                   " Ignore case when searching
set smartcase                    " Override ignorecase if search includes caps
set incsearch                    " Incremental search
set hlsearch                     " Highlight search results

" ----------------------------------------
" Tabs and Indentation
" ----------------------------------------
set tabstop=4                    " Number of spaces a tab counts for
set shiftwidth=4                 " Spaces used for autoindent
set expandtab                    " Use spaces instead of tabs
set autoindent                   " Copy indent from the current line
set smartindent                  " Smart autoindenting for programming

" ----------------------------------------
" Plugins
" ----------------------------------------
" Use vim-plug for plugin management (https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')

" Tmux navigator for seamless navigation between vim and tmux panes
Plug 'christoomey/vim-tmux-navigator'

" Status line plugin for better UI
Plug 'vim-airline/vim-airline'

" Syntax highlighting for various languages
Plug 'sheerun/vim-polyglot'

" Fuzzy file finder
Plug 'junegunn/fzf.vim'

" Git integration
Plug 'tpope/vim-fugitive'

call plug#end()

" ----------------------------------------
" Plugin Configurations
" ----------------------------------------
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 0

" fzf
nnoremap <leader>f :Files<CR>    " Quickly find files

" ----------------------------------------
" Quality of Life
" ----------------------------------------
set nobackup
set noswapfile
set nowritebackup
" ----------------------------------------
" Autocommands
" ----------------------------------------
" Automatically reload the file if it changes outside of Vim
autocmd FocusGained,BufEnter * checktime

" Highlight text on yank
augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=200}
augroup END
