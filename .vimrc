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
Plugin 'jeaye/color_coded'
Plugin 'rdnetto/YCM-Generator'
Plugin 'rhysd/vim-clang-format'
Plugin 'jalcine/cmake.vim'
Plugin 'nickhutchinson/vim-cmake-syntax'

" stop - all plugins above
call vundle#end()

" filetype func on
filetype plugin indent on

" set color
colorscheme gruvbox

syntax on
" For mouse click in NERDTree
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
" c language
let s:tlist_def_c_settings = 'c;d:macro;g:enum;s:struct;u:union;t:typedef;' .
                           \ 'v:variable;f:function'

" c++ language
let s:tlist_def_cpp_settings = 'c++;n:namespace;v:variable;d:macro;t:typedef;' .
                             \ 'c:class;g:enum;s:struct;u:union;f:function;m:member;' .
                              \ 'p:prototype;l:local'

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
set colorcolumn=120
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
" color_coded switch
let g:color_coded_enabled = 1
" color coded file types
let g:color_coded_filetypes = ['c', 'cpp', 'cc', 'objc', 'h', 'hpp']

let g:ycm_global_ycm_extra_conf='/home/chengxiang/.vim/.ycm_extra_conf.py'
"" turn on completion in comments
let g:ycm_complete_in_comments=1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" only show completion as a list instead of a sub-window
set completeopt-=preview
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jk :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jj :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nmap <F3> :YcmDiags<CR>

let g:clang_format#code_style = "google"
let g:clang_format#style_options = {
            \ "PointerAlignment" : "Right",
            \ "BreakBeforeBraces" : "Attach",
            \ "AllowShortBlocksOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "Cpp1111BracedListStyle" : "true",
            \ "CommentProgmas" : "'^ NOLINT'", 
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
" autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)

map <C-f> :NERDTree<CR>
map <F4> :NERDTreeToggle<CR>

nmap J 5j  
nmap K 5k  
  
" all selected Ctrl+a
nmap <silent> <C-a> ggvG$  

" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
" autocmd VimEnter * NERDTree
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
