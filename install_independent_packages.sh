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
  RUN=$(user_can_sudo && echo "sudo" || echo "command")
  
  $RUN apt-get update
  $RUN apt-get install -y git wget vim
  
  # chrome
  # NOTE: It requires typing `enter` key, so automatic installation may breaks
  install_chrome
  
  # NeoVIM
  # install_neovim
  
  # Set minimal C++ example 
  $RUN apt install cmake libeigen3-dev libboost-all-dev -y

  # For playing mkv file
  $RUN apt install ubuntu-restricted-extras mpv -y
  
  # xpad
  $RUN apt install xpad -y  
  
  # terminator
  $RUN apt install terminator -y  

  # Simple screen recorder
  $RUN apt-add-repository ppa:maarten-baert/simplescreenrecorder
  $RUN apt-get update -y  
  $RUN apt-get install simplescreenrecorder -y
}

main 
