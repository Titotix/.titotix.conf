alias v='vim'

# apt-get
alias agu='sudo apt-get update && sudo apt-get upgrade'
alias agd='sudo apt-get update && sudo apt-get dist-upgrade'

# Mingw32
alias gcc-win-32='i686-w64-mingw32-gcc'
alias gcc-win-64='x86_64-w64-mingw32-gcc-4.9-win32'

alias clr='clear'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias rgrep='rgrep --color=auto'
fi
