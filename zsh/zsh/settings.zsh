# history
setopt INC_APPEND_HISTORY #append to history as soon as you write the command
setopt HIST_IGNORE_ALL_DUPS
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

# change color of fish like zsh autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=255" 

# colors in ls
unset LSCOLORS

export CLICOLOR=1
export CLICOLOR_FORCE=1

# tab autcomplete directories with cd
zstyle ':completion:*' menu yes select

export ENHANCD_DISABLE_DOT=1
export CASE_SENSITIVE=1
export CAPISTRANO_USER=$USER

setopt ignoreeof

# disable chroma in fast-syntax-highlighting
export FAST_HIGHLIGHT=(
chroma-git chroma/-git.ch
chroma-example chroma/-example.ch
chroma-grep chroma/-grep.ch
chroma-egrep chroma/-grep.ch
chroma-fgrep chroma/-grep.ch
chroma-perl chroma/-perl.ch
chroma-make chroma/-make.ch
chroma-awk chroma/-awk.ch
chroma-gawk chroma/-awk.ch
chroma-mawk chroma/-awk.ch
)
