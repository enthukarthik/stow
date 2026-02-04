# This is a local zshenv runs and sets users' environmental variables after /etc/zsh/zshenv.

# XDG default directory specifications
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$HOME"
export EDITOR="nvim"

export MANPAGER="nvim +Man!"
# export PAGER="nvim +Man!"
# colored less + termcap vars
export LESS="-R --use-color -Dd+r -Du+b"
# export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
# export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
# export LESS_TERMCAP_me="$(printf '%b' '[0m')"
# export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
# export LESS_TERMCAP_se="$(printf '%b' '[0m')"
# export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
# export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

# if .local/bin exists in the home directory add it to the PATH env var
LOCAL_BIN="$HOME/.local/bin"

if [ -d "$LOCAL_BIN" ]; then # if LOCAL_BIN exists
	if [[ ":$PATH:" != *":$LOCAL_BIN:"* ]]; then # if it doesn't exists already in the PATH env var
		export PATH="$LOCAL_BIN:$PATH"
	fi
fi

