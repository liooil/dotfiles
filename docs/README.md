# dotfiles

## Reference

[Dotfiles](https://wiki.archlinux.org/title/Dotfiles)

## Setup

```bash
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles remote add origin git@github.com:liooil/dotfiles
dotfiles config status.showUntrackedFiles no
```

## Replication

```bash
git clone --bare git@github.com:liooil/dotfiles $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

### Backup

```bash
mkdir -p .dotfiles-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mkdir -p $(dirname {}) mv {} .dotfiles-backup/{}
```
