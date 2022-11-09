# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n 2> /dev/null || true

# [...]

GREEN='\[\e[92m\]'
RED='\[\e[91m\]'
CYAN='\[\e[96m\]'
YELLOW='\[\e[93m\]'
RESET='\[\e[0m\]'

if [ "$(whoami)" = 'root' ]
then
  PS1="${RESET}[${RED}\u${RESET}@${CYAN}\h ${YELLOW}\w${RESET}]\$ "
else
  PS1="${RESET}[${GREEN}\u${RESET}@${CYAN}\h ${YELLOW}\w${RESET}]\$ "
fi

# [...]
