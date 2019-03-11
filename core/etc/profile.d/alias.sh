#!/bin/sh
# Aliases from http://test.ipsaw.com:8080/install

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# xplatform shell helpers
alias flush='dscacheutil -flushcache'
alias cls='clear'
alias h='history'
alias ..='cd ..'
alias ...='cd ../..'

# git
alias ga='git add .'
#alias gs='git status'
alias gp='git push'
alias gca='git commit -v -a'
alias gl='git pull'
alias gb='git branch'
alias gco='git checkout'

# alpi
alias lbusave='lbu ci -v -d'
alias lbusavedry='lbu ci -n -v'
alias lbustat='lbu status'
alias update='wget -q -O - https://raw.githubusercontent.com/nihildeb/alpi/master/install |sh'
alias updater='update && lbusave && reboot'

function nginxinit() {
  adduser -D -g 'www' www
  mkdir /www
  chown -R www:www /var/lib/nginx
  chown -R www:www /www
}
alias nginx-init='nginxinit'
alias nginx-start='rc-service nginx start'
alias nginx-enable='rc-update add nginx'

alias squid-start='rc-service squid start'
alias squid-enable='rc-update add squid'
alias squid-reconfigure='squid -k reconfigure'
alias squid-check='squid -k check'
alias squid-stat='netstat -tl'


