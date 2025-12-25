#!/bin/sh
if [ -d ~/.vim/pack/zrt/start/ ]
then
    echo "update connfig"
    cd ~/.vim/pack/zrt/start/
    cd YouCompleteMe
    git pull
    cd ../fzf
    git pull
    cd ../nerdtree
    git pull
    cd ../git-messenger.vim
    git pull
    cd ../tagbar
    git pull
    exit 0
fi
mkdir -p ~/.vim/pack/zrt/start/
cd ~/.vim/pack/zrt/start/
git clone git@github.com:ycm-core/YouCompleteMe.git
git clone git@github.com:junegunn/fzf.git
git clone git@github.com:preservim/nerdtree.git
git clone git@github.com:rhysd/git-messenger.vim.git
git clone git@github.com:preservim/tagbar.git
