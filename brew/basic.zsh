# HOMEBREW SETTING
# * if brew has already installed, below lines will be run when reading this file
# if type brew          : check wheather brew command exist
# &>                    : redirect both of standard output and error to /dev/null
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
  autoload -Uz colors && colors
  autoload -Uz add-zsh-hook
fi
