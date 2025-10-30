# config.nu
#
# Installed by:
# version = "0.102.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.
$env.config.show_banner = false;

# bun: `curl -fsSL https://bun.sh/install | bash`
$env.BUN_INSTALL = $"($env.HOME)/.bun"
$env.PATH = ($env.PATH | prepend ($env.BUN_INSTALL ++ /bin))
# rust: pacman -S rustup
$env.PATH = ($env.PATH | prepend ($env.HOME ++ /.cargo/bin))

# helix: pacman -S helix
$env.EDITOR = "helix"
alias hx = helix

$env.PATH = ($envv.PATH | prepend ($env.HOME + /.local/share/gem/ruby/3.0.0/bin))

# for webpack
$env.NODE_OPTIONS = "--max-old-space-size=4096"
