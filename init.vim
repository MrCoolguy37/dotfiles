set encoding=utf-8
" colorscheme onedark
set cmdheight=2
set t_Co=256
set noshowmode
set number
set laststatus=2
set numberwidth=5
set nowrap
set ruler
" syntax on
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
call plug#begin('~/.config/nvim/autoload')
" Plugins

Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'davidhalter/jedi-vim'
Plug 'Raimondi/delimitMate'
Plug 'greyblake/vim-preview'
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \}
Plug 'joshdick/onedark.vim'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Plugin graveyard
Plug 'Shougo/deoplete.nvim'
" End Plugins
call plug#end()
" Key mappings
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

" Split Navigation
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Buffer Navigation
map <S-j> :bprevious<cr>
map <S-l> :bnext<cr>
inoremap <Nul> <C-n>
" General Settings
set timeoutlen=1000 ttimeoutlen=0
set nocompatible
filetype plugin indent on
set backspace=eol,start,indent
set ignorecase
set smartcase
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set autochdir
set nostartofline
set virtualedit=block
set backspace=2
" Plugin Settings

" NERDTree
map <f2> :NERDTreeToggle<cr>

" Ultisnips
" let g:UltisnipsExpandTrigger="<C-j>"
" let g:UltisnipsJumpForward="<C-j>"
" let g:UltisnipsJumpBackwardTrigger="<C-k>"
let g:UltisnipsExpandTrigger="<cr>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
" Airline
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" YouCompleteMe
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" LanguageClient
let g:LanguageClient_autostart = 0
nnoremap <leader>lcs :LanguageClientStart<CR>

let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'go': ['go-langserver'] }

    "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
    "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
    "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
    if (empty($TMUX))
      if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      endif
      "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
      "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
      " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
      if (has("termguicolors"))
        set termguicolors
      endif
    endif

syntax on
colorscheme onedark
