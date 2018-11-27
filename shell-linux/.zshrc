export TERM='xterm-256color' # 设置256色
export EDITOR='vim'

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 全部使用 utf-8

source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen theme bhilburn/powerlevel9k powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'

antigen bundles <<EOBUNDLES
    autojump
    bundler
    capistrano
    catimg
    command-not-found
    extract
    gem
    git
    git-extras
    history
    colored-man-pages
    sudo
    catimg
    npm
    vundle
    chucknorris
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions
    zsh-users/zsh-autosuggestions
    t413/zsh-background-notify
EOBUNDLES

# Tell antigen that you're done.
antigen apply
# ================= antigen config end ===================

## 本地静态服务器
# alias rs="ruby -run -e httpd . -p 3000"

# command line history config
# ignore duplicate commands, ignore commands starting with a space
export HISTCONTROL=erasedups:ignorespace
# keep the last 20000 entries
export HISTSIZE=20000
