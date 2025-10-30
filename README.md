# dotfiles

## Reference

[Dotfiles](https://wiki.archlinux.org/title/Dotfiles)

## Setup

```bash
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles remote add origin git@github.com:liooil/dotfiles
```

## Replication

```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/liooil/dotfiles $HOME/.dotfiles.tmp/
rsync --recursive --verbose --exclude '.git' $HOME/.dotfiles.tmp/ $HOME/
rm --recursive $HOME/.dotfiles.tmp/
```
