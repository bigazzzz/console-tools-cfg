#!/bin/sh
# System update
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y

# ZSH 
sudo apt install zsh -y && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions sudo web-search)/g' ~/.zshrc

# TMUX MC
sudo apt install -y tmux mc

# VIM
sudo apt install -y vim 
sudo update-alternatives --set editor `which vim.tiny`



