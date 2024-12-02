if status is-interactive
    # Commands to run in interactive sessions can go here

    # mac
    if test (uname) = Darwin
        /opt/homebrew/bin/brew shellenv | source

        # 环境变量
        set -Ux PATH $HOME/go/bin $PATH
        set -Ux EDITOR /opt/homebrew/bin/hx
        set -Ux PATH $HOME/.local/bin $PATH
        set -Ux PATH $HOME/.cargo/bin $PATH
    end

    starship init fish | source
    navi widget fish | source
    zoxide init fish | source

    # 别名
    alias ls='eza -a --icons -l --git --no-time  --no-user'
    alias vi='hx'
    alias cat = bat
    alias cd='z'


end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
