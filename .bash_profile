function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="[\[\e[37;44m\]\t\[\e[0m\]] \[\e[92m\]\w\[\033[31m\]\$(parse_git_branch)\[\033[00m\]\n$ "
