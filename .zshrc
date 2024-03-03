# ------------------------------------------------------------------------------
# Oh My Zsh
# ------------------------------------------------------------------------------
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# THEME
ZSH_THEME="half-life"

# AUTOSUGGESTIONS export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#dc5fc8'
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    bundler
    brew
    dotenv
    macos
  )

source $ZSH/oh-my-zsh.sh


# ------------------------------------------------------------------------------
# Custom Configuration
# ------------------------------------------------------------------------------

MY_CUSTOM_CONFIG="$HOME/.zsh/my_zsh_config"
source $MY_CUSTOM_CONFIG/basic/*.zsh
source $MY_CUSTOM_CONFIG/docker/*.zsh
source $MY_CUSTOM_CONFIG/git/*.zsh
source $MY_CUSTOM_CONFIG/python/*.zsh
source $MY_CUSTOM_CONFIG/wezterm/*.zsh
