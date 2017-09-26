# dotfiles

这是我的 dotfiles, 使用 stow 管理

## prepare

https://github.com/thoughtbot/laptop

powerline font https://github.com/powerline/fonts

## usage

```shell
cd ~
git@github.com:teddy-ma/dotfiles.git
git clone https://github.com/zsh-users/antigen.git .antigen
cd dotfiles
brew bundle
stow mac

ln -s ~/Dropbox/Apps/Atom ~/.atom
ln -s ~/Dropbox/Config/zsh_history ~/.zsh_history
```

## more

https://www.songofcode.com/dotfiles/
