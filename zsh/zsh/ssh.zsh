#auto ssh-add
zstyle :omz:plugins:ssh-agent agent-forwarding on

#autocomplete ssh hosts
if [[ -a ~/.ssh/config ]] then
  autoload bashcompinit
  bashcompinit
  function _ssh_completion() {
  perl -ne 'print "$1 " if /^  HostName (.+)$/' ~/.ssh/config
  }
  complete -W "$(_ssh_completion)" ping
  unsetopt auto_name_dirs
fi
