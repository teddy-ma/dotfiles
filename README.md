# Dotfiles

这是我的 `dotfiles`,  使用 Emacs 进行管理, 支持 macOS 与 Linux

# Install

完成下面所写的准备工作后，只要打开 Emacs, 等待配置完成，输入 `C-i` 打开配置 `dotfiles.org` 文件，
使用 `C-c C-v t=` 就能生成各种 dotfiles 了。

## macOS prepare

macOS 主要依赖 [thoughtbot 的 laptop](https://github.com/thoughtbot/laptop) 脚本进行初始化，然后配合 ownCloud 上储存的私有配置文件完成配置。

```shell
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log
brew cask install owncloud

ln -s ~/ownCloud/Config/id_rsa ~/.ssh/id_rsa
ln -s ~/ownCloud/Config/id_rsa.pub ~/.ssh/id_rsa.pub

cd ~
git clone git@github.com:teddy-ma/dotfiles.git ~/.emacs.d

brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
curl -sL https://git.io/fisher | source

fisher install jethrokuan/fzf
fisher install jethrokuan/z
fisher install franciscolourenco/done

ln -s ~/ownCloud/Config/Spoons ~/.hammerspoon

ln -s ~/ownCloud/Config/pyim ~/.emacs.d
ln -s ~/ownCloud/Config/snippets ~/.emacs.d
```

## Linux prepare

Linux 下只需要安装几个最基础的包

```shell
sudo pacman -Syu git fish ttf-inconsolata ttf-arphic-uming

chsh -s /usr/bin/fish
curl -sL https://git.io/fisher | source
fisher install jethrokuan/fzf
fisher install jethrokuan/z
fisher install franciscolourenco/done

git clone git@github.com:teddy-ma/dotfiles.git ~/.emacs.d/

ln -s ~/ownCloud/Config/pyim ~/.emacs.d
ln -s ~/ownCloud/Config/snippets ~/.emacs.d
```
