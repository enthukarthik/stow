alias cls="clear"
alias vim="nvim"

alias ls="lsd -h --color=auto --group-directories-first"
alias la="lsd -alh --color=auto --group-directories-first"
alias ll="lsd -alh --color=auto --group-directories-first"

alias grep="grep --color=auto"

alias cat="bat"
alias man="batman" # part of bat-extras package

# launch help page of commands in bat syntax highlighting in plain format in 'help' language
# try $help ls
# should work only if the commands has --help option
alias bathelp="bat --plain --language=help"
help() {
	"$@" --help 2>&1 | bathelp
}

alias ff="fastfetch"
alias jj="__zoxide_zi"
alias h=history

alias ..="cd .."
alias ...="cd ../.."

# Git aliases
alias g="git"

alias gs="git status"
alias gst='git status'
alias gsts='git stash show --patch'
alias gss='git status --short'
alias gsb='git status --short --branch'

alias gcf='git config --list'

alias ga="git add ."
alias gaa='git add --all'

alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsn='git bisect new'
alias gbso='git bisect old'
alias gbsr='git bisect reset'
alias gbss='git bisect start'

alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gsw='git switch'
alias gswc='git switch --create'

alias gco="git checkout"
alias gcor='git checkout --recurse-submodules'
alias gcb='git checkout -b'
alias gcB='git checkout -B'

alias gcm='git commit --message'
alias gcam='git commit --all --message'
alias gcas='git commit --all --signoff'
alias gcasm='git commit --all --signoff --message'
alias gcs='git commit --gpg-sign'
alias gcss='git commit --gpg-sign --signoff'
alias gcssm='git commit --gpg-sign --signoff --message'
alias gcmsg='git commit --message'
alias gcsm='git commit --signoff --message'
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gca!='git commit --verbose --all --amend'
alias gcan!='git commit --verbose --all --no-edit --amend'
alias gcans!='git commit --verbose --all --signoff --no-edit --amend'
alias gcann!='git commit --verbose --all --date=now --no-edit --amend'
alias gc!='git commit --verbose --amend'
alias gcn='git commit --verbose --no-edit'
alias gcn!='git commit --verbose --no-edit --amend'

alias gd='git diff'
alias gdca='git diff --cached'
alias gdcw='git diff --cached --word-diff'
alias gds='git diff --staged'
alias gdw='git diff --word-diff'

alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glods='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
alias glod='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
alias glola='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
alias glols='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'
alias glol='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'

alias gm='git merge'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gms="git merge --squash"
alias gmff="git merge --ff-only"
alias gmom='git merge origin/$(git_main_branch)'
alias gmum='git merge upstream/$(git_main_branch)'

alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase --interactive'
alias grbo='git rebase --onto'
alias grbs='git rebase --skip'

alias gstall='git stash --all'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'

alias gp="git push"
alias gpd='git push --dry-run'
alias gpl="git pull"

alias gpristine='git reset --hard && git clean --force -dfx'

# Dev aliases
alias  gcc="gcc -Wall -Wextra -Werror -pedantic -std=c23 -lm"
alias agcc="gcc -Wall -Wextra -Werror -pedantic -std=c23 -lm -fsanitize=address -fsanitize=undefined -fanalyzer" # advanced gcc flags to detect more issues
alias  g++="g++ -Wall -Wextra -Werror -pedantic -std=c++17 -lm "
alias ag++="g++ -Wall -Wextra -Werror -pedantic -std=c++17 -lm -fsanitize=address -fsanitize=undefined -fanalyzer"
alias clang="clang -Wall -Wextra -Werror -Wpedantic -std=c++17"
alias aclang="clang -Wall -Wextra -Werror -Wpedantic -std=c++17 -fsanitize=address -fsanitize=undefined -fsanitize=thread -fsanitize=memory"
alias py="python3"

# Arch linux specific
# Pacman - https://wiki.archlinux.org/index.php/Pacman_Tips
alias pacin='sudo pacman -S'                                      # Install packages from the repo
alias pacins='sudo pacman -U'                                     # Install a pkg from local file
alias pacinsd='sudo pacman -S --asdeps'                           # Install packages as dependencies of another pkg
alias paclean='sudo pacman -Sc'                                   # Clean old and unused caches and packages
alias pacloc='pacman -Qi'                                         # Display info about pkg in the local db
alias paclocs='pacman -Qs'                                        # Search for pkg in the local db
alias paclr='sudo pacman -Scc'                                    # Remove all files from the local cache
alias paclsorphans='sudo pacman -Qdt'                             # List all orphaned pkgs
alias pacmir='sudo pacman -Syy'                                   # Force refresh of all packages after updating mirrorlist
alias pacre='sudo pacman -R'                                      # Remove packages (keep settings & dependencies)
alias pacrem='sudo pacman -Rns'                                   # Remove packages, settings & dependencies
alias pacrep='pacman -Si'                                         # Display info about a pkg from the repo
alias pacreps='pacman -Ss'                                        # Search for pkg in the repo
alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'              # Delete all orphaned packages
alias pacupd="sudo pacman -Sy"                                    # Update and refresh local pkgs, ABS and AUR db
alias pacupg='sudo pacman -Syu'                                   # Sync with the repo and upgrade
alias pacfileupg='sudo pacman -Fy'                                # Download fresh pkg db from the server
alias pacfiles='pacman -F'                                        # Search pkg file names for matching strings
alias pacls='pacman -Ql'                                          # List files in a package
alias pacown='pacman -Qo'                                         # Show which pkg owns a file

function paclist() {
  pacman -Qqe | xargs -I{} -P0 --no-run-if-empty pacman -Qs --color=auto "^{}\$"
}

if (( $+commands[xdg-open] )); then
  function pacweb() {
    if [[ $# = 0 || "$1" =~ '--help|-h' ]]; then
      local underline_color="\e[${color[underline]}m"
      echo "$0 - open the website of an ArchLinux package"
      echo
      echo "Usage:"
      echo "    $bold_color$0$reset_color ${underline_color}target${reset_color}"
      return 1
    fi

    local pkg="$1"
    local infos="$(LANG=C pacman -Si "$pkg")"
    if [[ -z "$infos" ]]; then
      return
    fi
    local repo="$(grep -m 1 '^Repo' <<< "$infos" | grep -oP '[^ ]+$')"
    local arch="$(grep -m 1 '^Arch' <<< "$infos" | grep -oP '[^ ]+$')"
    xdg-open "https://www.archlinux.org/packages/$repo/$arch/$pkg/" &>/dev/null
  }
fi

if (( $+commands[yay] )); then
  alias yaconf='yay -Pg'
  alias yaclean='yay -Sc'
  alias yaclr='yay -Scc'
  alias yaupg='yay -Syu'
  alias yasu='yay -Syu --noconfirm'
  alias yain='yay -S'
  alias yains='yay -U'
  alias yare='yay -R'
  alias yarem='yay -Rns'
  alias yarep='yay -Si'
  alias yareps='yay -Ss'
  alias yaloc='yay -Qi'
  alias yalocs='yay -Qs'
  alias yalst='yay -Qe'
  alias yaorph='yay -Qtd'
  alias yainsd='yay -S --asdeps'
  alias yamir='yay -Syy'
  alias yaupd="yay -Sy"
fi

# Check Arch Linux PGP Keyring before System Upgrade to prevent failure.
function upgrade() {
  sudo pacman -Sy
  echo ":: Checking Arch Linux PGP Keyring..."
  local installedver="$(LANG= sudo pacman -Qi archlinux-keyring | grep -Po '(?<=Version         : ).*')"
  local currentver="$(LANG= sudo pacman -Si archlinux-keyring | grep -Po '(?<=Version         : ).*')"
  if [ $installedver != $currentver ]; then
    echo " Arch Linux PGP Keyring is out of date."
    echo " Updating before full system upgrade."
    sudo pacman -S --needed --noconfirm archlinux-keyring
  else
    echo " Arch Linux PGP Keyring is up to date."
    echo " Proceeding with full system upgrade."
  fi
  if (( $+commands[yay] )); then
    yay -Su
  elif (( $+commands[trizen] )); then
    trizen -Su
  elif (( $+commands[pacaur] )); then
    pacaur -Su
  elif (( $+commands[aura] )); then
    sudo aura -Su
  else
    sudo pacman -Su
  fi
}
