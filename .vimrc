set nocompatible              " be iMproved, required
filetype off                  " required for Vundle

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages itself
Plugin 'VundleVim/Vundle.vim'

" UI Enhancements
Plugin 'dracula/vim'                      " Theme
Plugin 'itchyny/lightline.vim'           " Status line
Plugin 'lukas-reineke/indent-blankline.nvim'  " Indent lines (works in Neovim best)

" File Explorer
Plugin 'preservim/nerdtree'

" Fuzzy Finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Git Integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Code Editing
Plugin 'Valloric/YouCompleteMe'          " Autocompletion
Plugin 'sheerun/vim-polyglot'            " Language packs
Plugin 'tpope/surround'                  " Surround text
Plugin 'tpope/commentary'                " Comment toggling
Plugin 'editorconfig/editorconfig-vim'   " .editorconfig support

" Language Support
Plugin 'dense-analysis/ale'              " Async linting/formatting for many languages
Plugin 'honza/vim-snippets'              " Snippets for Bash, Python, Perl
Plugin 'vim-python/python-syntax'        " Better Python syntax
Plugin 'davidhalter/jedi-vim'            " Python autocompletion
Plugin 'vim-perl/vim-perl'               " Enhanced Perl support
Plugin 'WolfgangMehner/bash-support.vim' " Bash development helpers
Plugin 'tpope/vim-sleuth'                " Auto-detect indent settings

call vundle#end()                        " Required
filetype plugin indent on               " Enable filetype-based plugins & indenting

" Dracula theme
syntax on
colorscheme dracula
set background=dark

" UI Tweaks
set number
set relativenumber
set clipboard=unnamedplus
set lazyredraw
set ttyfast

" Keybindings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>

" ALE Linting & Formatting Configuration
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'sh': ['shellcheck'],
\   'perl': ['perl'],
\}

let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': ['autopep8'],
\   'sh': ['shfmt'],
\   'perl': ['perltidy'],
\}

" Jedi-Vim Settings (Python completion)
let g:jedi#completions_enabled = 1
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 1
let g:jedi#auto_vim_configuration = 0

" Auto-start NERDTree always
autocmd VimEnter * if !argc() | NERDTree | else | NERDTree | wincmd p | endif

" Close Vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && &filetype == "nerdtree") | q | endif

