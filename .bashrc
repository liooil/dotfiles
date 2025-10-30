
export PATH=$HOME/.local/bin:$PATH

# bun: `curl -fsSL https://bun.sh/install | bash`
export BUN_INSTALL=$HOME/.bun
export PATH=$BUN_INSTALL/bin:$PATH

# helix: pacman -S helix
export EDITOR=helix
alias hx='helix'

# nvm: pacman -S nvm
source /usr/share/nvm/init-nvm.sh

# x-cmd: eval "$(curl https://get.x-cmd.com)"
[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.

[ $USER == root ] && alias paru='runuser -u xiteng -- proxy-run paru'

# dotfiles: 
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# yazi: pacman -S yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

