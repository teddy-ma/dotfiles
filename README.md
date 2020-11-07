# dotfiles

这是我的 `dotfiles`, 使用 [stow](https://www.gnu.org/software/stow/) 管理

## macOS

macOS 主要依赖 [thoughtbot 的 laptop](https://github.com/thoughtbot/laptop) 脚本进行初始化，然后配合 [dropbox](https://www.dropbox.com/) 上储存的私有配置文件完成配置。

```shell
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log
brew cask install dropbox
brew install stow
ln -s ~/ownCloud/Config/id_rsa ~/.ssh/id_rsa
ln -s ~/ownCloud/Config/id_rsa.pub ~/.ssh/id_rsa.pub

cd ~
git clone git@github.com:teddy-ma/dotfiles.git
git clone https://github.com/zsh-users/antigen.git .antigen
cd dotfiles
sh install-mac.sh

cd homebrew
brew bundle

ln -s ~/ownCloud/Config/pyim ~/.emacs.d/pyim
ln -s ~/ownCloud/Config/snippets ~/.emacs.d/snippets
```

## Linux

Linux 下只需要安装几个最基础的包，就可以进入 stow 开始配置了。

```shell
sudo pacman -S git stow zsh
chsh -s /bin/zsh

cd ~
git clone git@github.com:teddy-ma/dotfiles.git
git clone https://github.com/zsh-users/antigen.git .antigen
cd dotfiles
sh install-linux.sh
```

## 模块

| 模块         | 说明                              |
|--------------|-----------------------------------|
| emacs-common | 通用的 emacs 配置文件             |
| emacs-linux  | linux 适用的 emacs 配置           |
| emacs-macos  | macOS 适用的 emacs 配置           |
| git-common   | 通用的 git 配置文件               |
| git-macos    | macOS 适用的 git 配置             |
| git-linux    | linux 适用的 git 配置             |
| shell-macos  | macOS 适用的 shell 配置           |
| shell-linux  | linux 适用的 shell 配置           |
| hammerspoon  | macOS 专用的工具 hammerspoon 配置 |
| neovim       | neovim 的配置文件                 |
| psql         | postgresql 的命令行配置           |
| shell        | zsh 的配置文件                    |
| tmux         | tmux 的配置文件                   |
| xresources   | xresources 的配置文件             |
| i3           | i3 的配置文件                     |
| .vscode      | vscode 的配置文件                 |

还有一个 `.vscode` 的文件夹，里面有 [recommendations](https://code.visualstudio.com/docs/editor/extension-gallery#_workspace-recommended-extensions), 所以使用 [vscode](https://code.visualstudio.com/) 打开本仓库后，就可以一键安装所有的扩展。

## private
不在仓库中但是应该存在的文件夹, 用来存放私有的配置文件 (ssh key 等不方便放在公开仓库的信息).
