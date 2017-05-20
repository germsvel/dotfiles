# for elixir
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/Users/germsvel/Sites/alf"

# alias ll="ls -lahG" export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

# show git branch on command line prompt
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$NO_COLOUR\u$NO_COLOUR\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

# Show path on bash name
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# load .profile
source ~/.profile

# open commit messages with vim
export EDITOR="vim"

# set alias git for hub gem
eval "$(hub alias -s)"



# for git completion
source ~/git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
