# Shell settings
# 
# Author: Neivin Mathew
# August 24, 2017

export EDITOR='vim'
export HISTCONTORL=ignoredups

# Prompt settings
export PS1="\[\033[38;5;39m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;72m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;220m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\] "
export CLICOLOR='xterm-color'

# Autocompletion script for git branches and commands
git_autocompletion='~/.git/.git_autocompletion.bash'
if [-t $git_autocompletion]
  source $git_autocompletion
fi

# Aliases:
#--------------------------------------------------
# General
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

# Phabricator Code review aliases
alias adpb='arc diff --preview --browse'
alias al='arc land'
alias alr='arc land --revision'

# maven
alias mb='mvn -U clean install -T4 -DskipTests'
alias mbs='mvn -U clean install -DskipTests'
alias mr='mvn clean install -T4 -DskipTests -Drelease'
alias mt='mvn clean install -T4 -Dintegration'
alias mts='mvn clean install -Dintegration'
alias mu='mvn clean install -T4'

#java verison
alias j7='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home'
alias j8='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home'

#repositories
alias bamboo='cd ~/source/bamboo'
alias cppclient='cd ~/source/cppclient'
alias environment='cd ~/source/environment'
alias javaclient='cd ~/source/javaclient'
alias legacy='cd ~/source/legacy'
alias legacyjc='cd ~/source/legacy_javaclient'
alias ops='cd ~/source/ops'
alias tappmo='cd ~/source/com.tappmo'
alias inception='cd ~/source/inception'
alias pasta='cd ~/source/scalablepasta'

#npm
alias nb='npm run build'
alias nbf='bamboo; rm -rf node_modules/; gpm; ./scripts/setup.sh; ./scripts/build.sh;'
alias nr='npm run'
alias nt='npm run test'

#blaze
alias bb='blaze build && rm -rf out/'
alias bi='blaze intellij'
alias br='blaze release'
alias bt='blaze test'

#cppclient
alias cboot='cppclient; ./scripts/start_bootstrap.sh'
alias cc='./scripts/build.py -c'
alias ct='./scripts/build.py --posshog'
alias cct='cc;ct'
alias brccct='tappmo;br;cppclient;cct;'

#scripts
alias bootstrap='~/source/environment/shared-scripts/start_bootstrap.py'
alias kibana='~/source/ops/tools/kibana.py'
alias rp='./scripts/remote_precommit.sh'
alias totem='~/source/inception/ix4690/ops/totem.py'
alias vpnkeys='ssh-add ~/.ssh/devkey.pem'
alias rr='~/source/environment/shared-scripts/remote_run.sh'

