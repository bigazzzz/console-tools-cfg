#!/bin/sh

MY_CONFIG_DIR=`dirname $0`/configs

# MC
sudo apt update && sudo apt install mc -y

# ZSH && oh-my-zsh
sudo apt install zsh -y && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# ZSH plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions sudo web-search)/g' ~/.zshrc
# ZSH themes
sudo apt install fonts-powerline -y
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp $MY_CONFIG_DIR/.zshrc_my ~/
echo "source ~/.zshrc_my" >> ~/.zshrc
p10k configure
source ~/.zshrc

# TMUX 
sudo apt install -y tmux
cp $MY_CONFIG_DIR/.tmux.conf ~/

# VIM
sudo apt install -y vim 
sudo update-alternatives --set editor `which vim.tiny`
VIM_SPELL="~/.vim/spell"
mkdir -p $VIM_SPELL
[ ! -f $VIM_SPELL/en.utf-8.spl ] && wget --directory-prefix=$VIM_SPELL http://ftp.vim.org/vim/runtime/spell/en.utf-8.spl
[ ! -f $VIM_SPELL/en.utf-8.sug ] && wget --directory-prefix=$VIM_SPELL http://ftp.vim.org/vim/runtime/spell/en.utf-8.sug
[ ! -f $VIM_SPELL/ru.utf-8.spl ] && wget --directory-prefix=$VIM_SPELL http://ftp.vim.org/vim/runtime/spell/ru.utf-8.spl
[ ! -f $VIM_SPELL/ru.utf-8.sug ] && wget --directory-prefix=$VIM_SPELL http://ftp.vim.org/vim/runtime/spell/ru.utf-8.sug 
cp $MY_CONFIG_DIR/.vimrc ~/

# SDCV
# sudo apt install sdcv -y
# cp -R $MY_CONFIG_DIR/.stardict/ ~/
# echo "export STARDICT_DATA_DIR=\"~/.stardict/dict\"" >> ~/.zhsrc_my

# OTHER
mkdir -p ~/.config
cp -r $MY_CONFIG_DIR/.config/ ~/.config/
cp $MY_CONFIG_DIR/.dircolors ~/
