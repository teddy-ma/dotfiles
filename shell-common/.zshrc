export TERM='xterm-256color' # 设置256色
export EDITOR='vim'

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# 全部使用 utf-8

## 本地静态服务器
# alias rs="ruby -run -e httpd . -p 3000"

# command line history config
# ignore duplicate commands, ignore commands starting with a space
export HISTCONTROL=erasedups:ignorespace
# keep the last 20000 entries
export HISTSIZE=20000

export PATH="$HOME/.bin:$PATH"

# platform
source ~/.zsh_platform
