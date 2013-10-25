#!/bin/bash
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
# Vimの初期設定
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# ruby configuration
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir ~/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins/ruby-build
git clone https://github.com/jf/rbenv-gemset.git .rbenv/plugins/rbenv-gemset

# Fonts Configuration
cd $SCRIPT_DIR
mkdir -p ~/.fonts
cp $SCRIPT_DIR/fonts/Inconsolata+for+Powerline.otf ~/.fonts
cp $SCRIPT_DIR/fonts/PowerlineSymbols.otf ~/.fonts

# dot Files
cp dot.Xdefaults ~/.Xdefaults
cp -r dot.zsh.d ~/.zsh.d
cp dot.zshrc ~/.zshrc
cp dot.vimrc ~/.vimrc
