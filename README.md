My Vim Config
=============

Installation
------------
* Make sure you're using the vim with programming languages supported -
`sudo apt-get install vim-nox`
* Install the plugins dependencies -
`sudo apt-get install ack-grep exuberant-ctags`
* Clone project
`git clone git://github.com/flisky/vimrc.git $HOME/.vimrc`
* Intialize Vundle
`git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
* Make it work -
`ln -s ~/.vim/vimrc ~/.vimrc && vim -c BundleInstall`
* Enjoy!

### JavaScript
`npm install -g jshint`

### Coffeescript
`npm install -g coffeescript coffeelint`

### Python
`pip install flake8`

### System
`apt-get install ack-grep`
