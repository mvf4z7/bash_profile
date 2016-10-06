export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color
eval "$(ssh-agent -s)"

#[[ -s ~/.bashrc ]] && source ~/.bashrc


# Autocomplete Git commands and branches
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\u@\h \[\033[01;35m\] \W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
alias buildcore='mvn -f ~/VividSeats/vivid-coreapi -Dmaven.test.skip=true clean install'

export NVM_DIR="/Users/michael.fanger/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export EDITOR='subl -w'
