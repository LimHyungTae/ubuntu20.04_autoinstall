# To change the location btw Ctrl and Caps Lock
sudo apt-get install gnome-tweak-tool -y

# To install Lunar Vim, Neo-Vim > 0.8 is required
wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb -y

#Install cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Lunar Vim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

# Nerd Font for kitti icons
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts && ./install.sh
