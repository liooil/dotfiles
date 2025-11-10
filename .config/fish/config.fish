if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path ~/.local/bin
    # bun
    fish_add_path ~/.bun/bin
    # helix
    alias hx='helix'
    # dotfiles
    alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
    # yazi
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end
end
