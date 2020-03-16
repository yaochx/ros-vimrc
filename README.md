# ros-vimrc
config vim for ros development

**NOTICE**
* To tell rospack your packages, before openning vim, please source devel/setup.zsh or source devel/setup.bash 

**setup**
* git clone https://github.com/yaochx/ros-vimrc ~/.vim
* edit ~/.vim/.ycm_extra_cfg.py according to yourself
* ln -s ~/.vim/.vimrc ~/.vimrc
* cd ~/.vim
* git submodule update --init --recursive
* start vim, install plugins by ":PluginInstall"
* again, git submodule update --init --recursive
* goto './bundle/YouCompleteMe'
* python3 install.py --clangd-completer --go-completer

