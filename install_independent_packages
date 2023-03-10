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
  RUN=$(user_can_sudo && echo "sudo" || echo "command")
  $RUN add-apt-repository ppa:neovim-ppa/stable 
  $RUN apt-get update -y
  $RUN apt-get install neovim -y
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
  
  $RUN apt-get update
  $RUN apt-get install -y git curl wget vim
  
  # chrome
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  $RUN dpkg -i google-chrome-stable_current_amd64.deb
  
  # NeoVIM
  install_neovim


}

main "$@"
