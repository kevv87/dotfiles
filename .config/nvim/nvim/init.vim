"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kevv87/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/kevv87/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/kevv87/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

call dein#add('ryanoasis/vim-devicons')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('preservim/nerdtree')
call dein#add('mhinz/vim-startify')
call dein#add('neoclide/coc.nvim',{'merged':0,'branch':'master','build':'yarn-install --frozen-lockfile'})
" call dein#add('windwp/windline.nvim', {'branch':'master'})
" call dein#add('nvim-lua/plenary.nvim')
" call dein#add('lewis6991/gitsigns.nvim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('morhetz/gruvbox')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"

"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
" Themes ------
syntax on
set cursorline

"" gruvbox on startup
autocmd vimenter * ++nested colorscheme gruvbox

"One half Theme ------
"syntax on
"set t_Co=256
"set cursorline
"colorscheme onehalfdark
"----- End one half

"End themes------
set termguicolors

set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

"----- Shortcuts
"-- NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"
"
" Status bar -----
"" hiding tmux status bar
" autocmd VimEnter,VimLeave * silent !tmux set status
"---


"" mappings --- 
runtime ./maps.vim
""

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
set background=light
set background=light
set background=light
set background=light
set background=light
set background=light
set background=light
set background=light
set background=light
set background=light
set background=light
