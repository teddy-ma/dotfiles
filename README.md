# dotfiles

这是我的 dotfiles, 使用 stow 管理

## MacOS
```shell
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log
brew cask install dropbox
ln -s ~/Dropbox/Config/zsh_history ~/.zsh_history
ln -s ~/Dropbox/Config/id_rsa ~/.ssh/id_rsa
ln -s ~/Dropbox/Config/id_rsa.pub ~/.ssh/id_rsa.pub
ln -s ~/Dropbox/code ~/code

cd ~
git clone git@github.com:teddy-ma/dotfiles.git
git clone https://github.com/zsh-users/antigen.git .antigen
cd dotfiles
stow mac
cd mac
brew bundle
```

## Linux
```shell
sudo apt-get install git stow zsh
chsh -s /bin/zsh

cd ~
git clone git@github.com:teddy-ma/dotfiles.git
git clone https://github.com/zsh-users/antigen.git .antigen
cd dotfiles
stow linux
```
