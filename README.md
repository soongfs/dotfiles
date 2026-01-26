# My dotfiles

## Usage

Clone:

```bash
git clone --bare https://github.com/soongfs/dotfiles.git ~/.dotfiles
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
dot checkout
```

Submodule:

```bash
dot submodule update --init --recursive
dot config --local submodule.recurse true
```

