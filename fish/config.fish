if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    if test -x /opt/homebrew/bin/brew
        /opt/homebrew/bin/brew shellenv | source
    end
    starship init fish | source
    alias vim=nvim
    alias ls=lsd
    navi widget fish | source
end

