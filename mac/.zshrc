export TERM='xterm-256color' # 设置256色
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 全部使用 utf-8

# git clone https://github.com/zsh-users/antigen.git ~/.antigen
source ~/.antigen/antigen.zsh
# need powerline font https://github.com/powerline/fonts
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen use oh-my-zsh
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
    npm
    rbenv
    rsync
    urltools
    vundle
    tmuxinator
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions
    t413/zsh-background-notify
EOBUNDLES
# notify needs `brew install terminal-notifier`

# Tell antigen that you're done.
antigen apply
# ================= antigen config end ===================

# alias
alias emacs='/usr/local/bin/emacs' # brew install emacs

# powerlevel9k
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history os_icon time)

# alias
## 本地静态服务器
# alias rs="ruby -run -e httpd . -p 3000"

# show system info (brew install archey)
archey -c
# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# command line history config
# ignore duplicate commands, ignore commands starting with a space
export HISTCONTROL=erasedups:ignorespace
# keep the last 20000 entries
export HISTSIZE=20000

export PATH="$HOME/.bin:$PATH"
# rbenv
eval "$(rbenv init - --no-rehash)"
