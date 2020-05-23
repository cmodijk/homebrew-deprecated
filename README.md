# cmodijk Homebrew Deprecated

[![Software License](https://img.shields.io/badge/license-MIT-8469ad.svg?style=flat-square)](LICENSE)

This is a fork of eXolnet's Homebrew tap for deprecated formulae but modified in a few way's.
1. The packages are build with a older icu4c version
1. The packages are build with a older openssl version
1. I removed httpd support because i'm not using it and has a newer openssl version which conflicts 
1. I remove php-fpm support because i'm not using it 

Please don't use this package i'm only building this for personal use and i'm not responding to issues or pull requests. 

## Installation

```bash
brew tap cmodijk/homebrew-deprecated
```

## Usage

```bash
brew install php@5.6
brew install php@7.0
brew install php@7.1
```

## Credits

- [All Contributors](../../contributors)

## License

This code is licensed under the [MIT license](http://choosealicense.com/licenses/mit/).
Please see the [license file](LICENSE) for more information.
