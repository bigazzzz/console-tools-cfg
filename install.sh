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
cp $MY_CONFIG_DIR/.zshrc_my ~/
cp $MY_CONFIG_DIR/.p10k.zsh ~/
echo "source ~/.zshrc_my" >> ~/.zshrc

# TMUX 
sudo apt install -y tmux
cp $MY_CONFIG_DIR/.tmux.conf ~/

# VIM
sudo apt install -y vim 
sudo update-alternatives --set editor `which vim.tiny`
mkdir -p ~/.vim/spell
cd ~/.vim/spell
[ ! -f en.utf-8.spl ] && wget http://ftp.vim.org/vim/runtime/spell/en.utf-8.spl
[ ! -f en.utf-8.sug ] && wget http://ftp.vim.org/vim/runtime/spell/en.utf-8.sug
[ ! -f ru.utf-8.spl ] && wget http://ftp.vim.org/vim/runtime/spell/ru.utf-8.spl
[ ! -f ru.utf-8.sug ] && wget http://ftp.vim.org/vim/runtime/spell/ru.utf-8.sug 
cp $MY_CONFIG_DIR/.vimrc ~/

# SDCV
# sudo apt install sdcv -y
# cp -R $MY_CONFIG_DIR/.stardict/ ~/
# echo "export STARDICT_DATA_DIR=\"~/.stardict/dict\"" >> ~/.zhsrc_my

# OTHER
mkdir -p ~/.config
cp $MY_CONFIG_DIR/.config/ ~/.config/
cp $MY_CONFIG_DIR/.dircolors ~/
