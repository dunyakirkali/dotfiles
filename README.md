# Dunya's Dotfiles

Here are my dotfiles.

This repo uses [stow](https://www.gnu.org/software/stow/) to symlink the dotfiles to my home directory.

If you want to use stow, clone this repository into `~/dotfiles` and follow the usage instructions below.

## Usage

First install [homebrew](https://brew.sh)

Then stow the brewfile:

```sh
stow brew
```

And install all packages:

```sh
brew bundle install
```

Then install [oh-my-zsh](https://ohmyz.sh/#install)

Then we will start stowing the bits and pieces we need:

```sh
stow shell
stow config
```
