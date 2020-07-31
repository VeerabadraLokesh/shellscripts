#!/bin/bash

alias l='ls -ltr'
alias ld='ls -d $PWD/*'




alias lsm='du --threshold=1M -sh ./*'
alias lsg='du --threshold=1G -sh ./*'
alias lsd='du -sh ./*'


#alias ffnp='firefox -p NewProfile'


alias syncdatetime='sudo ntpdate 1.ro.pool.ntp.org'

alias raliases='source ~/.bash_aliases'
alias r='source ~/.bash_aliases'

alias gb='git branch'
alias gs='git status'
alias gp='git pull'
alias gf='git fetch'
alias gc='git checkout $1'
alias gcb='git checkout -b $1'
alias gpush='git push'
alias gcommit='git commit'

alias dk='docker kill'
alias dps='docker ps'
alias drm='docker rm'