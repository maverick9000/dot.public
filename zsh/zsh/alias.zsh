#alias diff='vimdiff'
alias ripgrep='command rg'
alias rmds="find . -name '*.DS_Store' -type f -delete"

ls_hidden() # ls only hidden files
{
  if [ `which exa` ]; then
    exa -d .*
  else
    ls -ld .?*
  fi
}
alias lh=ls_hidden

alias l='ls -F -G --color --group-directories-first -lah'

if type "exa" > /dev/null; then
  alias ll='exa --long --git'
else
  alias ll='ls -lah'
fi

alias cls='colorls'

alias less='less -r' # handle escape sequences

alias vimc='vim ~/.vimrc'
alias zshc='vim ~/.zshrc'

alias finder='open -a Finder ./' # open Finder in current terminal directory

alias lynx='lynx -nocolor'

alias canary-extensions-disabled='open "/Applications/Google Chrome Canary.app" --args --disable-extensions --safe-plugins'

alias s='sudo'

alias cpu='top -o cpu'
alias mem='top -o rsize'

alias ip='curl icanhazip.com'

# copy working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'

# todos in directory
alias todos='ack --nobreak --nocolor "(TODO|FIXME):"|sed -E "s/(.*:[[:digit:]]+):.*((TODO|FIXME):.*)/\2 :>> \1/"|grep -E --color=always ":>>.*:\d+"'

# quick look file
alias ql="qlmanage -px &>/dev/null"

alias diskspace="du -S | sort -n -r | less"

alias cleandocker='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

alias v='vim'
