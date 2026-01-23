# This is a local zshenv runs and sets users' environmental variables after /etc/zsh/zshenv.

# XDG default directory specifications
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME"
export EDITOR="nvim"

# if .local/bin exists in the home directory add it to the PATH env var
LOCAL_BIN="$HOME/.local/bin"

if [ -d "$LOCAL_BIN" ]; then # if LOCAL_BIN exists
	if [[ ":$PATH:" != *":$LOCAL_BIN:"* ]]; then # if it doesn't exists already in the PATH env var
		export PATH="$LOCAL_BIN:$PATH"
	fi
fi

