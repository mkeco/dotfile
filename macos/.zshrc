eval "$(starship init zsh)"
source "/Users/mkzero/.rye/env"
eval "$(navi widget zsh)"

# 别名
alias ls='eza --icons -l -a --git'
# alias yy='yazi'
alias vim='hx'
alias cat='bat'
alias zl='zellij -l ~/.config/zellij/layouts/layout.kdl'
alias cd='z'
alias curl='curlie'
alias ping='gping'
# 环境变量
export PATH=$HOME/go/bin:$PATH
export EDITOR=/opt/homebrew/bin/hx
export PATH="$HOME/.local/bin:$PATH"


 
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval "$(zellij setup --generate-auto-start zsh)"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
