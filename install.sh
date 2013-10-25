#!/bin/bash
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
# Vimの初期設定
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim -c NeoBundleInstall

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
git clone git@github.com:yascentur/Ricty.git ~/Ricty
cd ~/Ricty
wget http://levien.com/type/myfonts/Inconsolata.otf
wget -O mig1m.zip 'http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fmix-mplus-ipa%2F57240%2Fmigu-1m-20121030.zip'
unzip mig1m.zip
rm mig1m.zip 
sh ricty_generator.sh auto
cp Ricty-Regular.ttf Ricty-Bold.ttf ~/.vim/bundle/powerline/font
cd ~/.vim/bundle/powerline/font
fontforge -lang=py -script fontpatcher.py Ricty-Regular.ttf
fontforge -lang=py -script fontpatcher.py Ricty-Bold.ttf
cp -f Ricty* ~/.fonts
fc-cache -vf

# dot Files
cp dot.Xdefaults ~/.Xdefaults
cp -r dot.zsh.d ~/.zsh.d
cp dot.zshrc ~/.zshrc
cp dot.vimrc ~/.vimrc
cp dot.tmux.conf ~/.tmux.conf
