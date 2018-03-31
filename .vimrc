set nocompatible
syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
let g:solarized_termcolors=256
set mouse=a

"disable comment sequence
nnoremap o :<C-u>call append(expand('.'), '')<Cr>j

"auto reload .vimrc
augroup source-vimrc
	autocmd!
	autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
	autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

"complement parenthesis
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

"display line number
set number

"expand tab to space
set expandtab
"do not expand tab in Makefile
let _curfile=expand("%:r")
if _curfile == 'Makefile' || 'makefile'
	set noexpandtab
endif

"width of tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"indent for c language
set cindent
"hilight the current line
set cursorline
"display rular
set ruler
"display always the status line
set laststatus=2
"scroll while n lines
set scrolloff=3
"display title
set title

"hilight the search result
set hlsearch
"ignore capital on search
set ignorecase
"distinguish capital and small letter when mixed
set smartcase

"copy to clipboard
set clipboard=unnamed,autoselect

"for LaTeX
NeoBundle 'lervag/vimtex'
