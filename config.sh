#!/bin/sh
plugins=(
git@github.com:neoclide/coc.nvim.git
git@github.com:junegunn/fzf.git
git@github.com:junegunn/fzf.vim.git
git@github.com:preservim/nerdtree.git
git@github.com:rhysd/git-messenger.vim.git
)
if [ -d ~/.vim/pack/zrt/start/ ]
then
    echo "continue..."
else
    echo "new config..."
    mkdir -p ~/.vim/pack/zrt/start/
fi
cd ~/.vim/pack/zrt/start/
for plugin in "${plugins[@]}"; do
    plugin_name=$(basename "$plugin" .git)
    echo "$plugin"
    echo "$plugin_name"
    if [ -d "$plugin_name" ]
    then
        echo "just update..."
    else
        echo "begin clone"
        if [ "$plugin_name" = "coc.nvim" ]
        then
            git clone --branch release "$plugin"
        else
            git clone "$plugin"
        fi
    fi
    cd "$plugin_name"
    git pull
    cd ..
done
