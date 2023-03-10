#!/bin/bash
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Resolve the font issue of `agnoster` theme of zsh. Although you don't use zsh, it's totally fine
# Easy way: If your are using Ubuntu >= 16.04 you can simply run: 
# NOTE: It requires agreeing with something, so automatic installation may ask you to agree to something
sudo apt-get install fonts-powerline -y
