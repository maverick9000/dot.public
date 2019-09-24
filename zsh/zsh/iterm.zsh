[ -r ~/.zsh/iterm_linux_zsh_init.zsh ] && source ~/.zsh/iterm_linux_zsh_init.zsh

# set tab name in iterm to @hostname
DISABLE_AUTO_TITLE="true"
echo -ne "\e]1;@${HOST%%.*}\a"

# display hostname in right hand corner
function iterm2_print_user_vars() {
  iterm2_set_user_var badge $(hostname)
}
