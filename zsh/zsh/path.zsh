typeset -U path

path=(
  /usr/local/bin 
  /usr/local/sbin 
  $GOPATH/bin 
  $HOME/.cargo/bin
  /bin 
  /sbin 
  /usr/bin 
  /usr/sbin 
  $HOME/Library/Python/2.7/bin
  $HOME/shared/Config/bin
  $HOME/shared/Config/bin/converter
  $HOME/shared/Config/maid
  $path
)
