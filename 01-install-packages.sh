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
    fortune-anarchism
    fortunes-min
    fortunes-fr

    ## emacs - Doom
    # ripgrep # conflicts with bat for now (manual force install needed https://bugs.launchpad.net/ubuntu/+source/rust-bat/+bug/1868517/comments/32)
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
