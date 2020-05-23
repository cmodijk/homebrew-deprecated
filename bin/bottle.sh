#!/bin/bash

brew untap cmodijk/deprecated
brew tap cmodijk/deprecated

brew uninstall --ignore-dependencies icu4c@64.2
brew uninstall --ignore-dependencies openssl@1.0.2
brew uninstall php@5.6
brew uninstall php@7.0
brew uninstall php@7.1

brew install icu4c@64.2 --build-bottle
brew install openssl@1.0.2 --build-bottle
brew install php@5.6 --build-bottle -vvv
brew install php@7.0 --build-bottle -vvv
brew install php@7.1 --build-bottle -vvv

brew bottle --json --root-url="https://bottles.jcid.nl" icu4c@64.2
brew bottle --json --root-url="https://bottles.jcid.nl" openssl@1.0.2
brew bottle --json --root-url="https://bottles.jcid.nl" php@5.6
brew bottle --json --root-url="https://bottles.jcid.nl" php@7.0
brew bottle --json --root-url="https://bottles.jcid.nl" php@7.1

rsync --rsync-path "sudo rsync" -avz *.json shared02.prod.jcid.nl:/home/bottles/domains/bottles.jcid.nl/private_html/
rsync --rsync-path "sudo rsync" -avz *.tar.gz shared02.prod.jcid.nl:/home/bottles/domains/bottles.jcid.nl/private_html/
ssh shared02.prod.jcid.nl "sudo chown -R bottles:bottles /home/bottles/domains/bottles.jcid.nl/private_html/"
