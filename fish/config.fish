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
    alias ls='eza --icons -l -a --git'
    alias vim='hx'
    alias cat='bat'
    alias cd='z'


end
