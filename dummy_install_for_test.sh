#!/bin/bash
set -e

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

user_can_sudo() {
  command_exists sudo || return 1
  ! LANG= sudo -n -v 2>&1 | grep -q "may not run sudo"
}

install_zlib1g() {
  RUN=$(user_can_sudo && echo "sudo" || echo "command")
  $RUN apt-get install zlib1g  
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

  install_zlib1g
}

main "$@"
}
