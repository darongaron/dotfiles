dotfiles
========

Installation
------------

* [Homebrew](https://brew.sh/index_ja.html)
* [MacVim-KaoriYa](https://github.com/splhack/macvim-kaoriya)

```sh
$ git clone https://github.com/darongaron/dotfiles.git $HOME/.dotfiles
$ git clone https://github.com/Shougo/dein.vim $HOME/.vim/bundles/repos/github.com/Shougo/dein.vim
$ ln -s ~/.dotfiles/.vimrc ~/.vimrc
$ ln -s ~/.dotfiles/.gvimrc ~/.gvimrc
$ ln -s ~/.dotfiles/.vim ~/.vim
$ ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
$ mkdir ~/.vim_tmp
```

go
------

```
brew install go --with-cc-common
```

### 開発ツール

#### mac


```sh
go get -u github.com/rogpeppe/godef
go get -u github.com/nsf/gocode
go get -u golang.org/x/tools/cmd/goimports
go get -u github.com/jstemmer/gotags
```


#### Windows

```sh
go get -u -ldflags -H=windowsgui golang.org/x/tools/cmd/goimports
go get -u -ldflags -H=windowsgui github.com/rogpeppe/godef
go get -u -ldflags -H=windowsgui github.com/nsf/gocode
go get -u -ldflags -H=windowsgui github.com/jstemmer/gotags
```

