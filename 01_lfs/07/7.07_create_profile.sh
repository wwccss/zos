cat > /etc/profile << "EOF"
export LANG=en_US.UTF-8
export LC_ALL=C
export SVN_EDITOR="/usr/bin/vim"
PROMPT_COMMAND='echo -ne "\033]0;`hostname`:`basename $PWD`\\007"'
PS1='[\u@\h:\w\$] '
EOF
