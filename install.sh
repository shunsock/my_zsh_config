echo "="*50
echo "WARNING: This script remove your current configuration"
echo "Please backup your configuration before continue"
echo "files will be removed: ~/.zshrc ~/.zsh/my_custom_config"
echo "="*50

read -p "Do you want to continue [y/n]" yn
case $yn in
    [Yy]* )
      echo "[running] Starting update ...";;
    [Nn]* )
      echo "[stopped] Interupt Operation: Exit ..."
      exit;;
    * ) echo "Please answer yes or no.";;
esac

ZSH_RC_FILE="$HOME/.zshrc"
ZSH_CUSTOM_CONFIG="$HOME/.zsh/my_custom_config"

echo "[running] Removing old configuration ..."
[[ -d $ZSH_RC_FILE ]] && rm $HOME/.zshrc
[[ -d $ZSH_CUSTOM_CONFIG ]] && rm -rf $HOME/.zsh/my_custom_config

echo "[running] Copying new configuration ..."
[[ ! -d $ZSH_RC_FILE ]] && cp .zshrc $HOME/.zshrc
[[ ! -d $ZSH_CUSTOM_CONFIG ]] && mkdir $HOME/.zsh/my_zsh_config
