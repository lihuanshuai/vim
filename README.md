# Vim Config

Make Vim a Python IDE!


## Installation

### Dependencies

Install `ack-grep` for vim plugin [ack.vim][].

[ack.vim]: https://github.com/mileszs/ack.vim

On Ubuntu:

```sh
sudo apt-get install ack-grep
```

On Mac OSX:

```sh
brew install ack
```

Install `ctags` for [taglist.vim][] plugin:

[taglist.vim]: https://github.com/vim-scripts/taglist.vim

On Ubuntu:

```sh
sudo apt-get install exuberant-ctags
```

On Mac OSX:

```sh
brew install ctags
```

### Get It

Just clone this repository to you vim configuration directory.

```sh
git clone https://github.com/lihuanshuai/vim.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
```
