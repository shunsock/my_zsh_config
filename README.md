# MY_ZSH_CONFIG

## About
my zsh config files.

## Install
```shell
git clone git@github.com:shunsock/my_zsh_config.git
```

## Before starting
.zshrc depends on Oh-My-Zsh. Please install Oh-My-Zsh before using this setting.
- you can ignore by comment out a part of .zshrc (before custom setting part)

```.zshrc
source $ZSH/oh-my-zsh.sh # you can ignore by using comment out this line
```

- you can select which you will ignore to activate at custom setting part
```.zshrc
source $MY_CUSTOM_CONFIG/basic/*.zsh  # you can ignore by using comment out this line
source $MY_CUSTOM_CONFIG/docker/*.zsh
# and so on ...
```

## Getting Started
```shell
cd my_zsh_config
zsh install.zsh
```

![](image/install_png)

