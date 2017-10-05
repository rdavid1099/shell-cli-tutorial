#!/bin/bash
script_pwd=$(pwd)

if [ -d $HOME/bin/buildr ]; then
  echo "buildr is already installed on this machine"
else
  mkdir -p $HOME/bin/buildr && cd $HOME/bin/buildr
  echo "Installing buildr"
  mkdir lib
  cp -r $script_pwd/lib/* ./lib
  cp $script_pwd/buildr .
  echo "Adding buildr to bash commands"
  current_profile=""
  if [ ! -e "${HOME}/.bash_profile" ]; then
    touch $HOME/.bash_profile
    current_profile=$(cat $HOME/.profile)
  else
    current_profile=$(sed '/export PATH/d' $HOME/.bash_profile)
  fi
  printf '%s\n' "export PATH=${HOME}/bin/buildr:${PATH}" "$current_profile" > $HOME/.bash_profile
  echo "Install complete"
fi