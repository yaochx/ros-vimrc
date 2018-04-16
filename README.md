# ros-vimrc
config vim for ros development

**NOTICE**
* To tell rospack your packages, before openning vim, please source devel/setup.zsh or source devel/setup.bash 

**setup**
* ln -s <this repo dir>/.vimrc ~/.vimrm
* edit <this repo dir>/.ycm_extra_cfg.py according to yourself
* git submodule update --init --recursive

**plugins including**
* Plugin 'VundleVim/Vundle.vim'                                                                                                                                                                              
    + Plugin manager
* Plugin 'Valloric/YouCompleteMe'
    + autocompletion tool
* Plugin 'morhetz/gruvbox'
    + color theme for vim
* Plugin 'scrooloose/nerdtree'
    + file explorer
* Plugin 'Xuyuanp/nerdtree-git-plugin'
    + file status integrated with nerdtree
* Plugin 'ctrlpvim/ctrlp.vim'
    + fuzzy file finder
* Plugin 'vim-airline/vim-airline'
    + enhanced status line
* Plugin 'vim-airline/vim-airline-themes'
    + theme for airline
* Plugin 'vim-syntastic/syntastic'
    + static sematic checking tool
* Plugin 'vim-scripts/taglist.vim'
    + tag tool
* Plugin 'taketwo/vim-ros'
    + ros tool
* Plugin 'ohmystack/python-vim'
    + python tool
