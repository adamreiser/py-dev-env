#!/bin/bash

cp /ro/.vimrc ~/
cp /ro/.screenrc ~/

if [ ! -e ~/.bash-git-prompt ]; then
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
fi

if ! grep -E '^GIT_PROMPT_ONLY_IN_REPO=1$' ~/.bashrc; then
    echo 'GIT_PROMPT_ONLY_IN_REPO=1' >> ~/.bashrc
fi

if ! grep -E '^source ~/.bash-git-prompt/gitprompt.sh$' ~/.bashrc; then
    echo 'source ~/.bash-git-prompt/gitprompt.sh' >> ~/.bashrc
fi

if ! grep -E '^export PYTHONSTARTUP=~/.pythonrc$' ~/.bashrc; then
    echo 'export PYTHONSTARTUP=~/.pythonrc' >> ~/.bashrc
fi

sed -i 's/^#force_color_prompt=yes$/force_color_prompt=yes/' ~/.bashrc

if [ -e ~/.bash_aliases ]; then
    if ! grep -E '^alias e=exit$' ~/.bash_aliases; then
        echo 'alias e=exit' >> ~/.bash_aliases
    fi
fi

if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# YCM compiled component
~/.vim/bundle/YouCompleteMe/install.py

# After copying .vimrc and installing Vundle
vim +PluginInstall +qall
