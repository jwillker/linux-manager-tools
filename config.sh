#!/bin/bash
#linux basic tools
#Author: Jhonn Willker F. F. (frazao.jhonn@gmail.com)
#install vim and .vimrc git etc..
#Work with centos or debian based.
python -mplatform | grep -qi centos && DISTRO="centos" || DISTRO="debian"

if [[ DISTRO == "centos" ]]; then
  echo "Install configs for centos based"
  sleep 2
  echo "..."

  yum -y update #Install Updates
  #Install dependencies
  yum -y install zsh git vim wget mlocate epel-release htop
  #Default shell
  echo "export SHELL=/bin/zsh
  exec /bin/zsh -l" >> /home/$USER/.bash_profile
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  cd /home/$USER/
  wget https://raw.githubusercontent.com/JohnWillker/dotfiles/master/.vimrc

fi
