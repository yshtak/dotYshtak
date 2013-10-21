#!/bin/bash
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/sstephenson/rbenv.git .rbenv
cd $HOME
mkdir .rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins/ruby-build
git clone https://github.com/jf/rbenv-gemset.git .rbenv/plugins/rbenv-gemset
