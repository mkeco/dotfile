if status is-interactive
    # Commands to run in interactive sessions can go here

    # mac
    if test (uname) = Darwin
        /opt/homebrew/bin/brew shellenv | source

        # 环境变量

        set -x EDITOR /opt/homebrew/bin/hx
        set -x GOPATH (go env GOPATH)
        set -x PATH $PATH (go env GOPATH)/bin
        set -x PATH $PATH $HOME/.local/bin
        set -x PATH $PATH HOME/.cargo/bin
    end

    starship init fish | source
    navi widget fish | source
    zoxide init fish | source

    # 别名
    alias ls='eza -a --icons -l --git --no-time  --no-user'
    alias cat=bat

end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
