# Shell Configuration
# 
# Author: Neivin Mathew

export EDITOR='vim'

# Increase size of history buffer
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTORL=ignoredups

# Share history between sessions
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

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

# Standard Linux Tools
alias c='clear'
alias ll='ls -alH'
alias grep='grep --color=auto'

#git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcp='ga .; gc -m "cp"'
alias gcm='ga .;gc -m'
alias gd='git diff'
alias gdn='git diff --name-only'
alias gdm='gd master'
alias gdmn='gdn master'
alias gl='git log'
alias gm='git merge'
alias gmm='git merge master'
alias go='git checkout'
alias gom='git checkout master'
alias gp='git pull; if [ "$(git config --get remote.origin.url)" = "https://github.com/index/cppclient.git" ]; then gsu; echo "submodules updated" ; fi'
alias gpm='branch_name="$(git symbolic-ref HEAD 2>/dev/null)" || branch_name="(unnamed branch)"; branch_name=${branch_name##refs/heads/}; gom; gp; go $branch_name; gmm'
alias gpom='git pull origin master'
alias gs='git status'
alias gsu='git submodule init; git submodule update'
alias glo='gl --oneline'
alias gadog='gl --all --decorate --oneline --graph'
alias gcln='git clean -n'
alias gclf='git clean -f'
alias gph='git push origin HEAD'

# hub 
alias hc='hub compare'
alias gpc='git push origin HEAD && hub compare'

# maven
alias mb='mvn -U clean install -T4 -DskipTests'
alias mbs='mvn -U clean install -DskipTests'
alias mr='mvn clean install -T4 -DskipTests -Drelease'
alias mt='mvn clean install -T4 -Dintegration'
alias mts='mvn clean install -Dintegration'
alias mu='mvn clean install -T4'

#repositories
alias tappmo='cd ~/source/com.tappmo'
alias inception='cd ~/source/inception'
alias pasta='cd ~/source/scalablepasta'
alias sdk='cd ~/source/sdk'

#blaze
alias bb='blaze build && rm -rf out/'
alias bi='blaze intellij'
alias br='blaze release'
alias bt='blaze test'

#scripts
alias totem='~/source/inception/ix4690/ops/totem.py'
alias vpnkeys='ssh-add ~/.ssh/devkey.pem'
alias rr='~/source/environment/shared-scripts/remote_run.sh'

