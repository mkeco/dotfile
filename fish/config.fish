if status is-interactive
    # Commands to run in interactive sessions can go here

    # mac
    if test (uname) = Darwin
        /opt/homebrew/bin/brew shellenv | source

        # Added by OrbStack: command-line tools and integration
        # This won't be added again if you remove it.
        source ~/.orbstack/shell/init2.fish 2>/dev/null || :

    end

    # 环境变量
    starship init fish | source

    set -x PATH $PATH $HOME/.local/bin

    $HOME/.local/bin/mise activate fish | source

    zoxide init --cmd cd fish | source
    navi widget fish | source

    alias ll "eza -a -l -h --git --no-user --icons"

end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
