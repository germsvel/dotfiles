eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=~/bin:$PATH
export PATH="$PATH:/path/to/elixir/bin"
export PATH="$PATH:/usr/local/bin"

export EDITOR= vim

alias vim='/usr/local/Cellar/vim/8.0.0559/bin/vim'
alias run-tags='ctags -R --exclude=".git" .'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi



txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function checkout_branch () {
  local branch=$(git branch | ag $1)
  git checkout $branch
}
alias co=checkout_branch

print_before_the_prompt () {
  printf "\n $txtwht%s: $bldgrn%s $txtred %s\n$txtrst" "$USER" "$PWD" "$(parse_git_branch)"
}

PROMPT_COMMAND=print_before_the_prompt
PS1="-> "
