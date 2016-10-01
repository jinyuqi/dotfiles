# Author: Jin Yuqi
# Email: 179386223@qq.com

ln -s $PWD/vimrc $HOME/.vimrc

git clone http://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall && mkdir -p ~/.vim/colors && cp ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors 

cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer
