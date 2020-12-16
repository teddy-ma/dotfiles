# dotfiles

这是我的 `dotfiles`, 使用 Emacs 进行管理

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
git clone git@github.com:teddy-ma/dotfiles.git ~/.emacs.d
git clone https://github.com/zsh-users/antigen.git .antigen

ln -s ~/ownCloud/Config/pyim ~/.emacs.d
ln -s ~/ownCloud/Config/snippets ~/.emacs.d
```

## 生成配置

启动 Emacs 并等待安装完成，使用 `C-c i` 打开 `dotfiles.org`, 使用 `C-c C-v t` 生成所有配置文件。

macOS 用户可以执行

```shell
cd /tmp
brew bundle
```

安装常用软件
