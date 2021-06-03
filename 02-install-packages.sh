#!/bin/zsh

Packages=(

    ## Core
    #terminator
    #tmux
      xclip ## needed for tmux yank
#snapd
    #fonts-firacode

    ## utils
    bat ## needs 20.10
    mlocate

    ## fun
    cowsay
    lolcat
    fortune
    fortunes-min

    ## emacs - Doom
    fd-find
#     hunspell-fr
#     hunspell-en-us

    ## KBD
    #xcape
    #autokey-gtk

    ## CLI
    peco
    tree
    fasd

    ## Programming
#    r gcc-fortran tk
#    julia-bin
#    npm
#    jre-openjkd # needed by libreoffice...

    ## Documents
    pandoc
    texlive-full
#    nextcloud-desktop
#    remarkable-client
#    libreoffice-fresh
#    zotero

)


## Helper to install the packages listed above
for pkg in "${Packages[@]}"; do
    sudo apt install -y $pkg
done
