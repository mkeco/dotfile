eval "$(starship init zsh)"
# source "/Users/mkzero/.rye/env"
eval "$(navi widget zsh)"

# 环境变量
export PATH=$HOME/go/bin:$PATH
export EDITOR=/opt/homebrew/bin/hx
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export XDG_CONFIG_HOME="/Users/mkzero/.config"


 
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
source <(fzf --zsh)
source "$HOME/.cargo/env"
# eval "$(zellij setup --generate-auto-start zsh)"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
