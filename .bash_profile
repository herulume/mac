set -o vi

export PATH="$PATH:/usr/local/bin/"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$PATH:~/go/bin/"

export GPG_TTY=$(tty)
export EDITOR=/opt/homebrew/bin/nvim

[ -z "$TMUX" ] && export TERM=xterm-256color

alias g='git'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias v='nvim'
alias reload='source ~/.bash_profile'

alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
alias tks='tmux kill-session -t'

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtpur='\e[0;35m' # Purple
bldgrn='\e[1;32m' # Green
txtrst='\e[0m'    # Text Reset
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

print_before_the_prompt () {
    printf "\n$txtred%s: $bldgrn%s $txtpur%s\n$txtrst" "$USER" "$PWD" "$(parse_git_branch)"
}

PROMPT_COMMAND=print_before_the_prompt
PS1='-> '



. /opt/homebrew/opt/asdf/libexec/asdf.sh
