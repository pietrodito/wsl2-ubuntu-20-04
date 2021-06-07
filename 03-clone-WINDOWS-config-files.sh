#!/bin/zsh

COMP_DIR=$HOME/Comp/
WIN_CONFIG_DIR=$COMP_DIR/winconfig/

WIN_USER=`powershell.exe '$env:UserName' | sed 's/\r$//'`
WIN_HOME=/mnt/c/Users/$WIN_USER/


mkdir -p $COMP_DIR
rm -rf $WIN_CONFIG_DIR
git clone --bare git@github.com:pietrodito/winconfig.git $WIN_CONFIG_DIR

git --git-dir=$WIN_CONFIG_DIR --work-tree=$WIN_HOME/ config status.showUntrackedFiles no
git --git-dir=$WIN_CONFIG_DIR --work-tree=$WIN_HOME/ reset --hard
