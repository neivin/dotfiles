# Shell Configuration
# 
# Author: Neivin Mathew

export EDITOR='vim'
export HISTCONTORL=ignoredups

# Prompt settings
export CLICOLOR='xterm-color'
export PS1="\[\033[38;5;39m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;214m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

# Autocompletion script for git branches and commands
if [ -f ~/.git/.git_autocompletion.bash ]; then
  . ~/.git/.git_autocompletion.bash

  # Add git completion to aliases
  __git_complete go _git_checkout
  __git_complete gm _git_merge
  __git_complete gp _git_pull
  __git_complete gd _git_diff
  __git_complete gb _git_branch
fi

# Source aliases
[ -f ~/.bash_alias ] && source ~/.bash_alias
