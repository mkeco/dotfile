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

    /Users/mkzero/.local/bin/mise activate fish | source # added by https://mise.run/fish

    set -x PATH $PATH $HOME/.local/bin

    starship init fish | source

    zoxide init --cmd cd fish | source
    navi widget fish | source

    # bun
    set --export BUN_INSTALL "$HOME/.bun"
    set --export PATH $BUN_INSTALL/bin $PATH

else

    /Users/mkzero/.local/bin/mise activate fish --shims | source

end

# Added by Antigravity
fish_add_path /Users/mkzero/.antigravity/antigravity/bin

# pnpm
set -gx PNPM_HOME "/Users/mkzero/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
