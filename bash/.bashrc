# alias
alias ee='eclipse &'
alias dea='idea > /dev/null &'

# show git status
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
c_1="\[\e[0m\]"
c0="\[\e[30m\]"
c1="\[\e[31m\033[1m\]"
c2="\[\e[32m\033[1m\]"
c3="\[\e[33m\]"
c4="\[\e[34m\]"
c5="\[\e[35m\]"
c6="\[\e[36m\]"
c7="\[\e[37m\]"
PS1="\[\e]0;\u@\h\w\a\]\u@\h:$c2\w$c1\$(parse_git_branch)$c_1$ "
