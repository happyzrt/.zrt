#!/bin/sh
if [ -d ~/.vim/pack/zrt/start/ ]
then
    echo "update connfig"
    cd ~/.vim/pack/zrt/start/
    cd coc.nvim
    git pull
    cd ../fzf
    git pull
    cd ../nerdtree
    git pull
    cd ../git-messenger.vim
    git pull
    exit 0
fi
mkdir -p ~/.vim/pack/zrt/start/
cd ~/.vim/pack/zrt/start/
git clone --branch release git@github.com:neoclide/coc.nvim.git
git clone git@github.com:junegunn/fzf.git
git clone git@github.com:preservim/nerdtree.git
git clone git@github.com:rhysd/git-messenger.vim.git
