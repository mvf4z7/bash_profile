export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

#[[ -s ~/.bashrc ]] && source ~/.bashrc

# Autocomplete Git commands and branches
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Command prompt colors
export PS1="\[\033[01;35m\] \W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# add go bin to path
if command -v go; then
  export PATH=$PATH:$(go env GOPATH)/bin
fi

alias ll="ls -l"
alias la="ls -la"