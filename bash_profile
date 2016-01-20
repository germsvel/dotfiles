# for elixir
export PATH="$PATH:/path/to/elixir/bin"

# alias ll="ls -lahG" export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#Cluster Duck
# export twitter_consumer_key="v38KMxMSiuMTfdN4phNARA"
# export twitter_consumer_secret="fCtNg3cHVN6yENkjA63qwkurj1gRKzMY9LErU2XKE"

#TwitterVis
# export twitter_consumer_key="UNZHrPaMakj17UuSbr0OjA"
# export twitter_consumer_secret="MpcZie9waGYK2zuJSgrqKJDuuqJ1M01uaQyH6CHrVtE"

#tbot hashtag
export twitter_consumer_key="fccuYNY2fAYTAY4PIrTbA"
export twitter_consumer_secret="yodtrqyJgQosmueo0aPaefAoV8vpEJ8S9E9oQRuRA"

export twitter_oauth_token="1129015764-0Njb8HCqr2ZzG1t7XBuoueUNzZYlwPhOS1UOHeM"
export twitter_oauth_token_secret="ffSV1Mqi9uBzMcs83gMCRA1cta0d12GU8g7AinUlIU"

# key for full contact
export full_contact_key="6e7c29ce476a59c"

# AWs Keys
export provider='AWS'                        # required
export aws_access_key_id='AKIAIVERAAWHGV4ZVCZQ'                        # required
export aws_secret_access_key='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'

# for RVM

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

# open commit messages with mvim
export EDITOR="mvim -w"

# set alias git for hub gem
eval "$(hub alias -s)"



# for git completion
source ~/git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
