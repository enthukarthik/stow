alias cls="clear"

alias vim="nvim"

alias la="lsd -alh --color=auto --group-directories-first"
alias ls="lsd -h --color=auto --group-directories-first"
alias ll="lsd -alh --color=auto --group-directories-first"

alias grep="grep --color=auto"

alias cat="bat"
alias man="batman" # part of bat-extras package

alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gl="git log --oneline --graph --decorate"
alias gco="git checkout"

# launch help page of commands in bat syntax highlighting in plain format in 'help' language
# try $help ls
# should work only if the commands has --help option
alias bathelp="bat --plain --language=help"
help() {
	"$@" --help 2>&1 | bathelp
}

alias ff="fastfetch"

alias ..="cd .."
alias ...="cd ../.."

alias h=history

alias  gcc="gcc -Wall -Wextra -Werror -ansi -pedantic -std=c23 -lm"
alias dgcc="gcc -Wall -Wextra -Werror -ansi -pedantic -std=c23 -lm -g" # debug enabled gcc
alias agcc="gcc -Wall -Wextra -Werror -ansi -pedantic -std=c23 -lm -fsanitize=address -fsanitize=undefined -fanalyzer" # advanced gcc flags to detect more issues
alias  g++="g++ -Wall -Wextra -Werror -ansi -pedantic -std=c++17 -lm "
alias dg++="g++ -Wall -Wextra -Werror -ansi -pedantic -std=c++17 -lm -g"
alias ag++="g++ -Wall -Wextra -Werror -ansi -pedantic -std=c++17 -lm -fsanitize=address -fsanitize=undefined -fanalyzer"

alias clang="clang -Wall -Wextra -Werror -Wpedantic -std=c++17"
alias aclang="clang -Wall -Wextra -Werror -Wpedantic -std=c++17 -fsanitize=address -fsanitize=undefined -fsanitize=thread -fsanitize=memory"
