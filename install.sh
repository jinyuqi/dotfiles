# Author: Jin Yuqi
# Description: dotfiles's install - create each symbolic link in $HOME directory

#!/bin/bash
echo "Link symbolic..."
ln -s ${PWD}/.gdbinit ${HOME}/.gdbinit -f && echo ".gdbinit done"
ln -s ${PWD}/.gitconfig ${HOME}/.gitconfig -f && echo ".gitconfig done"
ln -s ${PWD}/.vimrc ${HOME}/.vimrc -f && echo ".vimrc done"
ln -s ${PWD}/.vimperatorrc ${HOME}/.vimperatorrc -f && echo ".vimperatorrc done"
echo "Done."
