set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-perl/vim-perl'
Plugin 'vim-scripts/gruvbox'
call vundle#end()
filetype plugin indent on
syntax on
set number
set hidden
set wildmenu
set showcmd
set lazyredraw
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set tabstop=4
set softtabstop=4 expandtab
set shiftwidth=4
set smarttab
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
nnoremap <C-L> :nohl<CR><C-L>
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
nnoremap <F5> :buffers<CR>:buffer<space>
nmap <C-M> :resize +80<CR>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap <F6> :NERDTreeToggle .<CR>
"colorscheme murphy
set background=dark
colorscheme gruvbox
function! Tab_Or_Complete()
if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
else
    return "\<Tab>"
endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set mouse=a
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
    " disable mouse
        set mouse=
    else
    " enable mouse everywhere
        set mouse=a
    endif
endfunc
nmap <C-Space>:call ToggleMouse()<CR>
set dictionary="/usr/dict/words"
set cursorline
"hi CursorLine ctermbg=239
"hi CursorLineNR term=bold cterm=bold ctermbg=236
set wmh=0
map - <C-W>-
map + <C-W>+
map <C-J> <C-W><Up>:res +102<CR>
map <C-K> <C-W><Down>:res +100<CR>
nmap <C-T> :tabe<CR>:bn<CR>
map <C-P> :tabn<CR>
map <C-O> :tabp<CR>
hi Normal guibg=NONE ctermbg=NONE
let mapleader = ","
"hi Comment ctermfg=239 ctermbg=243


