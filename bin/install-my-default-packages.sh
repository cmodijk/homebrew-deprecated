#!/bin/bash

brew untap exolnet/deprecated
brew untap cmodijk/homebrew-deprecated
brew tap cmodijk/homebrew-deprecated

brew install \
    ansible \
    brew-php-switcher \
    git \
    git-flow \
    htop \
    httpd \
    icdiff \
    mkcert \
    ncdu \
    nvm \
    php@5.6 \
    php@7.0 \
    php@7.1 \
    php@7.2 \
    php@7.3 \
    php@7.4 \
    the_silver_searcher \
    vault \
    watch \
    wget
