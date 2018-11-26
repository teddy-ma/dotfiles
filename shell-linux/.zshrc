export TERM='xterm-256color' # 设置256色
export EDITOR='vim'

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 全部使用 utf-8

source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

# zsh theme SPACESHIP config begin
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section  
  rust          # Rust section
  haskell       # Haskell Stack section
  exec_time     # Execution time
  line_sep      # Line break
  exit_code     # Exit code section
  char          # Prompt character
)

antigen theme https://github.com/patrick330602/termuxer termuxer
# zsh theme SPACESHIP config end

# notify needs `brew install terminal-notifier`
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
    rsync
    urltools
    vundle
    tmuxinator
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions
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