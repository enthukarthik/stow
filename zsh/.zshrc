# This runs for every interactive shell that is being launched. Mainly used for shell configuration and executing commands
# This should be linked to $ZDOTDIR/.zshrc

# if alises file exists, execute it
ALIAS="$XDG_CONFIG_HOME/shell/aliases.sh"
[ -f "$ALIAS" ] && . "$ALIAS"

# Setup history related settings
HISTSIZE=1000000000
SAVEHIST=$HISTSIZE
HISTFILE=$XDG_CACHE_HOME/zsh_history
HISTCONTROL=ignoreboth # consecutive duplicates & commands starting with space should be ignored
setopt extended_history
setopt append_history inc_append_history share_history

#unsetopt HIST_BEEP # turn off beep when going beyond history

# Turn off all beeps
unsetopt beep

# cd to directory without typing cd
setopt autocd

# Initialize the completion engine of zshell
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu
setopt no_case_glob no_case_match # make cmp case insensitive

# Turn off autocomplete beeps on ambiguous completion
# unsetopt LIST_BEEP

# Load colors engine
autoload -U colors && colors

# autosuggestions
# requires zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting
# requires zsh-syntax-highlighting package
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf setup
source <(fzf --zsh) # allow for fzf history widget

# Initialize vim mode in zshell
set -o vi

# Bind required keys
bindkey -v '^?' backward-delete-char # Backspace should delete behind the cursor
bindkey -v '^[[3~' delete-char # Delete key should delete under the cursor
bindkey -v '^[[H' beginning-of-line # Home key should move the cursor to the beginning of the line
bindkey -v '^[[F' end-of-line # End key should move the cursor to the end of the line
bindkey -v '^[[2~' overwrite-mode # Insert key should switch to overwrite mode
bindkey -v '^h' backward-kill-word # Ctrl-h should delete backwards word wise
bindkey -v '^f' forward-char # Ctrl-f to accept autosuggestions
bindkey -v '^r' fzf-history-widget # Launch fzf history search
bindkey -v '^p' history-search-backward
bindkey -v '^n' history-search-forward
bindkey -v '^k' kill-whole-line

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship.toml
#starship preset catppuccin-powerline -o ~/.config/starship.toml
#starship preset gruvbox-rainbow -o ~/.config/starship.toml
#starship preset pastel-powerline -o ~/.config/starship.toml
