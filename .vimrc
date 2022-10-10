set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'morhetz/gruvbox'
"Plugin 'ervandew/supertab'
Plugin 'Konfekt/FastFold'
"Plugin 'tmhedberg/SimpylFold'
"Plugin 'cquery-project/cquery'
"Plugin 'embear/vim-uncrustify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set undofile " maintain undo history between sessions

set shiftwidth=4
set tabstop=4
" The following are examples of different formats supported.
set autoindent

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'

"let g:SuperTabDefaultCompletionTypeDiscovery = [
"\ "&completefunc:<c-x><c-u>",
"\ "&omnifunc:<c-x><c-o>",
"\ ]
"let g:SuperTabLongestHighlight = 1

"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd BufWritePre <buffer> if (&filetype == 'cpp') | call Uncrustify() | endif

"if &term =~ '256color'
		" Disable Background Color Erase (BCE) so that color schemes
		" work properly when Vim is used inside tmux and GNU screen.
"		set t_ut=
"endif

" use , as leader
let mapleader=","

syntax enable " enable syntax processing

set number " show line numbers
set cursorline " highlights and unberlines current line
set relativenumber

set wildmenu " show autocomplete options

set showmatch " shows matching [({})]

set incsearch " searches as characters are entered
set hlsearch " highlights search matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" folding
set foldenable
set foldlevelstart=5
set foldnestmax=10
autocmd FileType c,cpp,java,js,ts setlocal foldmethod=syntax
autocmd FileType python setlocal foldmethod=indent

nnoremap <space> za

" moving by visual lines (if a line is too long, it gets wrapped)
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" moving entire lines
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

"set visualbell "gets rid of bell sound
set mouse=a

"map zuz <Plug>(FastFoldUpdate)
"let g:fastfold_savehook = 1
"let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
"let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

"let g:markdown_folding = 1
"let g:tex_fold_enabled = 1
"let g:vimsyn_folding = 'af'
"let g:xml_syntax_folding = 1
"let g:javaScript_fold = 1
"let g:sh_fold_enabled= 7
"let g:ruby_fold = 1
""let g:perl_fold = 1
"let g:perl_fold_blocks = 1
"let g:r_syntax_folding = 1
"let g:rust_fold = 1
"let g:php_folding = 1

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap kj <Esc>

set splitbelow
set splitright

set clipboard=unnamed
set laststatus=2
