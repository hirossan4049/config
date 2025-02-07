[[ $- != *i* ]] && return
HISTSIZE=100000
HISTFILESIZE=100000
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
parse_git_branch() {
  git branch 2>/dev/null | sed -n 's/^\* \(.*\)/(\1)/p'
}

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;31m\]:$(parse_git_branch)\[\033[00m\] \$ '

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
shopt -s histappend
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T '
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
shopt -s checkwinsize
shopt -s globstar
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
