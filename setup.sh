# Dotfiles setup script
# Author: Neivin Mathew

# Prereqs - Homebrew, Git
# Setup vim
VIM_DIR='~/.vim'
if [ ! -e $VIM_DIR ]; 
then
  mkdir $VIM_DIR
  # Create autoload and bundle dirs
  mkdir $VIM_DIR/autoload $VIM_DIR/bundle
  # Clone Pathogen
  cd $VIM_DIR
  git clone https://github.com https://github.com/tpope/vim-pathogen.git
  cp $VIM_DIR/vim-pathogen/autoload/pathogen.vim $VIM_DIR/autoload/pathogen.vim
  rm -rf vim-pathogen
fi

