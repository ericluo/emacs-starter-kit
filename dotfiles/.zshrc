# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="risto"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="false"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export LC_CTYPE=zh_CN.UTF-8

# rvm-install added line:
if [[ -s /home/eric/.rvm/scripts/rvm ]] ; then source /home/eric/.rvm/scripts/rvm ; fi


# rvm-install added line:
if [[ -s $HOME/.profile ]] ; then source $HOME/.profile ; fi

