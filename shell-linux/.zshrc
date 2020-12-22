export TERM='xterm-256color' # 设置256色
export EDITOR='vim'

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 全部使用 utf-8

source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

antigen theme geometry-zsh/geometry

antigen bundles <<EOBUNDLES
    command-not-found
    extract
    gem
    git
    git-extras
    history
    colored-man-pages
    sudo
    npm
    vundle
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions
    zsh-users/zsh-autosuggestions
    t413/zsh-background-notify
EOBUNDLES

# Tell antigen that you're done.
antigen apply
# ================= antigen config end ===================

# ignore duplicate commands, ignore commands starting with a space
export HISTCONTROL=erasedups:ignorespace
# keep the last 20000 entries
export HISTSIZE=20000

export PATH="$HOME/.cargo/bin:$PATH"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$(yarn global bin):$PATH"
