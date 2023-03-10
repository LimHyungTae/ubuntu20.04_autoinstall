#!/bin/bash
set -e

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

user_can_sudo() {
  command_exists sudo || return 1
  ! LANG= sudo -n -v 2>&1 | grep -q "may not run sudo"
}



install_neovim() {
  $RUN add-apt-repository ppa:neovim-ppa/stable 
  $RUN apt-get update -y
  $RUN apt-get install neovim -y
}

install_chrome() {
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  $RUN dpkg -i google-chrome-stable_current_amd64.deb
}

main() {
  # Parse arguments
  while [ $# -gt 0 ]; do
    case $1 in
      --full) export INSTALL_FULL=yes ;;
    esac
    case $1 in
      --skip-decrypt) export DECRYPT=no ;;
    esac
    shift
  done
  
  RUN=$(user_can_sudo && echo "sudo" || echo "command")
  
  # $RUN apt-get update
  # $RUN apt-get install -y git curl wget vim
  
  # chrome
  # NOTE: It requires typing `enter` key, so automatic installation may breaks
  # install_chrome
  
  # NeoVIM
  # install_neovim
  
  # Resolve the font issue of `agnoster` theme of zsh. Although you don't use zsh, it's totally fine
  # Easy way: If your are using Ubuntu >= 16.04 you can simply run: 
  # NOTE: It requires agreeing with something, so automatic installation may breaks
  $RUN apt-get install fonts-powerline -y
  
  # Set minimal C++ example 
  $RUN apt install cmake libeigen3-dev libboost-all-dev -y

  # For playing mkv file
  $RUN apt install ubuntu-restricted-extras mpv -y
  
  # xpad
  $RUN apt install xpad -y  
}

main "$@"
