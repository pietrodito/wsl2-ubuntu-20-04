# Doom emacs

## Build latest emacs

    git clone git@github.com:emacs-mirror/emacs.git --single-branch ~/emacs-source
    sudo apt install -y autoconf automake libtool texinfo build-essential  \
                        xorg-dev libgtk2.0-dev libjpeg-dev libncurses5-dev \
                        libdbus-1-dev libgif-dev libtiff-dev libm17n-dev   \
                        libpng-dev librsvg2-dev libotf-dev libgnutls28-dev \
                        libxml2-dev
    cd ~/emacs-source
    ./autogen.sh
    ./configure --with-x-toolkit=lucid --with-mailutils
    make bootstrap
    sudo make install

    ## Fix bat and ripgrep conflic
    apt-get download ripgrep 
    sudo dpkg --force-overwrite -i ripgrep*.deb

## Install doom

    git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d

## Add doom dir to the path

+ Done in `~/.zshrc`

## Setup doom

    doom install
