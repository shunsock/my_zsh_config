#!bin/zsh

# ----------------------------------------------------------------
# Variables
# ----------------------------------------------------------------
ZSH_RC_FILE="$HOME/.zshrc"
ZSH_CUSTOM_CONFIG="$HOME/.zsh/my_zsh_config"


# ----------------------------------------------------------------
# Starting the update process
# ----------------------------------------------------------------
echo "============================================================"
echo "WARNING: 💥 This script remove your current configuration"
echo "Please BACKUP YOUR CONFIGURATION before continue"
echo "files will be removed:"
echo "- {$ZSH_RC_FILE}"
echo "- {$ZSH_CUSTOM_CONFIG}"
echo "============================================================"


# ----------------------------------------------------------------
# Check if user want to continue
# before removing the old configuration
# ----------------------------------------------------------------
read -q "yn?Do you want to continue [y/n] "
echo

case $yn in
    [Yy]* )
      echo "[processing ... 1/4] 🚀 Starting update"
      ;;
    [Nn]* )
      echo "[stopped] 👋 Interupt Operation: Exit ..."
      exit
      ;;
    * ) echo "Please answer yes or no."
      ;;
esac


# ----------------------------------------------------------------
# Remove old configuration and copy new one
# ----------------------------------------------------------------
echo "[processing ... 2/4] 🚀 Removing old configuration"
[[ -d $ZSH_RC_FILE ]] && rm $ZSH_RC_FILE
[[ -d $ZSH_CUSTOM_CONFIG ]] && rm -rf $ZSH_CUSTOM_CONFIG

echo "[processing ... 3/4] 🚀 Copying new configuration"
[[ ! -d $ZSH_RC_FILE ]] && cp .zshrc $HOME/.zshrc
[[ ! -d $ZSH_CUSTOM_CONFIG ]] && cp -r my_zsh_config $ZSH_CUSTOM_CONFIG


# ----------------------------------------------------------------
# Activate the new configuration
# ----------------------------------------------------------------
echo "[processing ... 4/4] 🚀 Activate configuration"
source $ZSH_RC_FILE

# sometimes the source command fails to execute
# so we need to check if the configuration is activated
if [[ $? -ne 0 ]]; then
  echo "[error] 💫 Something went wrong ..."
  echo "[error] 👋 Leaving ..."
  exit 1
fi


# ----------------------------------------------------------------
# Activate the new configuration
# ----------------------------------------------------------------
echo "[finished] ✨ Configuration updated successfully!!"
echo "[finished] 👋 Leaving ..."
exit 0
