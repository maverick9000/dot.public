if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh
zplug "peterhurford/up.zsh"
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "junegunn/fzf-bin", \
 from:gh-r, \
 as:command, \
 rename-to:fzf
zplug "MichaelAquilina/zsh-you-should-use"
zplug "zdharma/fast-syntax-highlighting"
zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh

[ -r ~/.zsh/theme.zsh ] && source ~/.zsh/theme.zsh

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
