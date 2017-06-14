# dotfiles

这是我的 dotfiles, 使用 stow 管理

## prepare

+ homebrew
+ git
+ zsh

powerline font https://github.com/powerline/fonts

## usage

```shell
cd ~
git@github.com:teddy-ma/dotfiles.git
git clone https://github.com/zsh-users/antigen.git .antigen
cd dotfiles
brew bundle
```

create link

`cd dotfiles && stow mac`

or

`cd dotfile && stow linux`

## more

https://www.songofcode.com/dotfiles/
