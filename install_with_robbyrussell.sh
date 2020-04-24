#!/bin/sh
sudo apt update && apt full-upgrade -y && apt autoremove -y
sudo apt install zsh -y && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-myzsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc
cp "$ZSH/themes/robbyrussell.zsh-theme" "$ZSH_CUSTOM/themes/robbyrussell.zsh-theme"
echo '[*] replace "%c" with "%(4~|%-1~/…/%2~|%3~)" in "$ZSH_CUSTOM/themes/robbyrussell.zsh-theme"'
sudo apt install -y tmux vim mc 
sudo update-alternatives --set editor `which vim.tiny`
mv my_term_tools/configs ~/
cd ..
rm -r my_term_tools



