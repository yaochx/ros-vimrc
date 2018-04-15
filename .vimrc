" ~/.vimrc
"

" no vi compat
set nocompatible
let mapleader=","

" filetype func off
filetype off

" initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#rc()
call vundle#begin()
" start- all plugins below
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/taglist.vim'
Plugin 'taketwo/vim-ros'
Plugin 'ohmystack/python-vim'
Plugin 'airblade/vim-gitgutter'

" stop - all plugins above
call vundle#end()

" filetype func on
filetype plugin indent on

" set color
colorscheme gruvbox

syntax on
" For mouse click in NERDTree
" nerdtree
set mouse=a
let g:NERDTreeMouseMode=3 
" ctrlp
let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " ignored files on MacOSX/Linux
" airline
let g:airline_theme='tomorow'
let g:airline#extensions#tagbar#enabled = 0
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
map <silent> <F9> :TlistToggle<cr>
" vim ros
let g:ycm_semantic_triggers = {
            \   'roslaunch' : ['="', '$(', '/'],
            \   'rosmsg,rossrv,rosaction' : ['re!^', '/'],
            \ }

set background=dark
set colorcolumn=80
set fencs=utf-8,gbk,latin1
set autoindent
set cindent
set hlsearch
set nu
set ru
set ts=4
set sw=4
set expandtab 
set autoread 
set autowrite

" highlight cursor line
set cursorline
set smartindent

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" NerdTree s/gs split need swap
set swapfile
set dir=~/.vim/swap

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleterGoToDefinitionElseDeclaration<CR>

map <C-f> :NERDTree<CR>
map <F4> :NERDTreeToggle<CR>

nmap J 5j  
nmap K 5k  
  
" Ctrl+a
nmap <silent> <C-a> ggvG$  
" 选中状态下 Ctrl+c 复制  
vnoremap <c-c> "+y  
" Ctrl+v  
nmap <silent> <C-v> "+p  

" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
autocmd VimEnter * NERDTree
"
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
