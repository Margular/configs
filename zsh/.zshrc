source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle catimg
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle dircycle
antigen bundle dirpersist
antigen bundle encode64
antigen bundle git
antigen bundle gitfast
antigen bundle git-extras
antigen bundle history
antigen bundle history-substring-search
antigen bundle jsontools
antigen bundle last-working-dir
antigen bundle nmap
antigen bundle pip
antigen bundle pyenv
antigen bundle sudo
antigen bundle tmux
antigen bundle urltools

antigen bundle chrissicool/zsh-256color
antigen bundle djui/alias-tips
antigen bundle guiferpa/aterminal
antigen bundle MichaelAquilina/zsh-autoswitch-virtualenv
source =virtualenvwrapper.sh
antigen bundle popstas/zsh-command-time
antigen bundle Tarrasch/zsh-bd
antigen bundle Vifon/deer
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# this should be the last bundle
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

# Vifon/deer
autoload -U deer
zle -N deer
bindkey '\ek' deer

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# ssh
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# vim
export VISUAL="vim"
export EDITOR="vim"

# java
export JAVA_HOME=/usr/lib/jvm/default
export PATH=$JAVA_HOME/bin:$PATH

# android
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# v8
export NO_AUTH_BOTO_CONFIG=~/.boto
export PATH=$PATH:/opt/depot_tools

# rvm
export PATH=$PATH:$HOME/.rvm/bin
