if [[ "$OSTYPE" == darwin* ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv zsh)"

	# Load version control information
	fpath+=("$(brew --prefix)/share/zsh/site-functions")

	# Add Visual Studio Code (code)
	export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	alias ls='ls -G'
else
	# pure is cloned by install.sh
	fpath+=("$HOME/.zsh/pure")

	eval "$(dircolors -b)"
	# Windows drives (/mnt/*) are world-writable, don't highlight them in green
	export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
	alias ls='ls --color=auto'
fi

autoload -U promptinit; promptinit
prompt pure

if [ -z "$SSH_AUTH_SOCK" ]; then
	export SSH_AUTH_SOCK="$HOME/.ssh/agent.sock"
	ssh-add -l >/dev/null 2>&1
	if [ $? -eq 2 ]; then   # 2 = no agent listening on the socket
		mkdir -p -m 700 ~/.ssh
		rm -f "$SSH_AUTH_SOCK"
		eval "$(ssh-agent -s -a "$SSH_AUTH_SOCK")" >/dev/null
	fi
fi

alias ll="ls -la"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ssh="TERM=vt100 ssh"

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$HOME/.local/bin:$PATH"

command -v fortune >/dev/null && fortune
