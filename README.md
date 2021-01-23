# dotfiles

这是我的 `dotfiles`, 使用 [stow](https://www.gnu.org/software/stow/) 管理

## macOS

macOS 主要依赖 [thoughtbot 的 laptop](https://github.com/thoughtbot/laptop) 脚本进行初始化，然后配合 ownCloud 上储存的私有配置文件完成配置。

```shell
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log
brew cask install owncloud
brew install stow
ln -s ~/ownCloud/Config/id_rsa ~/.ssh/id_rsa
ln -s ~/ownCloud/Config/id_rsa.pub ~/.ssh/id_rsa.pub

cd ~
git clone git@github.com:teddy-ma/dotfiles.git ~/.emacs.d
git clone https://github.com/zsh-users/antigen.git .antigen

cd dotfiles
sh install-mac.sh

cd homebrew
brew bundle

ln -s ~/ownCloud/Config/pyim ~/.emacs.d
ln -s ~/ownCloud/Config/snippets ~/.emacs.d
```

## Linux

Linux 下只需要安装几个最基础的包，就可以进入 stow 开始配置了。

```shell
sudo pacman -Syu git zsh ttf-inconsolata ttf-arphic-uming

chsh -s /bin/zsh
ln -s ~/ownCloud/Config/id_rsa ~/.ssh/id_rsa
ln -s ~/ownCloud/Config/id_rsa.pub ~/.ssh/id_rsa.pub

cd ~
git clone git@github.com:teddy-ma/dotfiles.git
git clone https://github.com/zsh-users/antigen.git .antigen
cd dotfiles
sh install-linux.sh

ln -s ~/ownCloud/Config/pyim ~/.emacs.d
ln -s ~/ownCloud/Config/snippets ~/.emacs.d
```
