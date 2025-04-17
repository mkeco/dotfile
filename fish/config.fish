if status is-interactive
    # Commands to run in interactive sessions can go here

    # mac
    if test (uname) = Darwin
        /opt/homebrew/bin/brew shellenv | source

    end

    # 环境变量

    set -x PATH $PATH $HOME/.local/bin

    $HOME/.local/bin/mise activate fish | source

    starship init fish | source
    zoxide init --cmd cd fish | source
    navi widget fish | source

    # 别名
    alias cat=bat

end
