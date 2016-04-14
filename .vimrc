set nocompatible
filetype off

" set the runtime path to include Vundle and initinitialize"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set bs=2
set background=dark
set wrapmargin=8
set hlsearch
syntax on
set ruler
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set ignorecase

"git command message guide"
autocmd Filetype gitcommit setlocal spell textwidth=72

"map Up, Down, Right to nothing"
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" map ,w to <C-w> for window split, navigation between window"
" use (,w)v to split vertically"
" use (,w)(,w) to navigate between window"
nnoremap , <C-w>

" ag search integrate with ack.vim
let g:ackprg = 'ag --vimgrep'

" change IndentGuides plugin color and detault enable it
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesEven ctermbg=235
hi IndentGuidesOdd ctermbg=black

" map command to :IndentGuidesEnable
map <F3> :IndentGuidesToggle<CR>

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_quiet_messages = {
    \ "!level":  "errors" }

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_loc_list_height = 5

"remove trailing white spaces"
autocmd BufWritePre * :%s/\s\+$//e

