# This is a local zshenv runs and sets users' environmental variables after /etc/zsh/zshenv.

# XDG default directory specifications
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME"
export EDITOR="nvim"

# if .local/bin exists in the home directory add it to the PATH env var
if [ -d "$HOME/.local/bin" ]; then
	export PATH="$HOME/.local/bin":$PATH
fi

