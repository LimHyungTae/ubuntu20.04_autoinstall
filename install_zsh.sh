#!/bin/bash
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Resolve the font issue of `agnoster` theme of zsh. Although you don't use zsh, it's totally fine
# Easy way: If your are using Ubuntu >= 16.04 you can simply run: 
# NOTE: It requires agreeing with something, so automatic installation may ask you to agree to something
sudo apt-get install fonts-powerline -y

# If you wanna use powerlevel10k theme
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

################## Plugins ################## 

# fasd
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update -y
sudo apt-get install fasd -y

# zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
