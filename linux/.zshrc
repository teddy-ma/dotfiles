export TERM='xterm-256color' # 设置256色
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 全部 utf-8

source ~/.antigen/antigen.zsh
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    bundler
    capistrano
    command-not-found
    gem
    git
    git-extras
    history
    npm
    rbenv
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions
    t413/zsh-background-notify
EOBUNDLES
# notify needs `brew install terminal-notifier`

# Tell antigen that you're done.
antigen apply

# powerlevel9k
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history nvm os_icon time)

export PATH="$HOME/.bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# alias
## 本地静态服务器
# alias rs="ruby -run -e httpd . -p 3000"


# ignore duplicate commands, ignore commands starting with a space
export HISTCONTROL=erasedups:ignorespace
# keep the last 5000 entries
export HISTSIZE=20000
