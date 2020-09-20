export TERM='xterm-256color' # 设置256色
export EDITOR='vim'

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 全部使用 utf-8

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

source ~/.antigen/antigen.zsh

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
  battery       # Battery level and status
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_BATTERY_THRESHOLD=35
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_TIME_SHOW=true

antigen theme denysdovhan/spaceship-prompt
# antigen theme romkatv/powerlevel10k
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

if [ -d "$HOME/Dropbox/Config" ]; then
  export HISTFILE="$HOME/Dropbox/Config/zsh_history"
fi


export PATH="$HOME/.bin:$PATH"

# alias
alias vim='/usr/local/bin/nvim' # brew install neovim
alias ls='/usr/local/bin/exa' # brew install exa
alias cat='/usr/local/bin/bat' # brew install bat
alias gita="python3 -m gita" # pip3 install -U gita

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.bin:$PATH"

# bat colorful man page
export MANPAGER="sh -c 'col -bx | bat -l man -p'"


. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# added by travis gem
[ -f /Users/teddy/.travis/travis.sh ] && source /Users/teddy/.travis/travis.sh


