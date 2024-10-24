#ls aliases;;
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#Git aliases
alias gits='git status'
alias gitp='git pull'
alias gitprs='git pull --recurse-submodules'
alias gitc='git commit'
alias gitm='git commit -m "$(date)" && git push'
alias git.='git add .'
alias gitu='git add . -u'
alias gitpush='pytest && git push || echo "Error"'
alias gitf='gitu && gitm && git push'
alias gitup='git. && gitm && git push'
alias gitsfgp='git submodule foreach "git pull"'
alias gitmt='git. && gitm'
alias gitall='~/bash/git/gitpull.sh'

#Make aliases
alias run='make run'
alias clean='make clean'
alias remake='clean && make'
alias rerun='remake && run'

#Shell aliases
alias py='python3'
#alias cd='cd $1 && clear && echo "${PS1@P}" && l'
alias ..='cd ..'
alias ...='cd ../..'
alias cx='cd /'
alias rmrf='rm -rf'
alias bsource='source ~/.bashrc'
alias zsource='source ~/.zshrc'
alias ip='ip -c'
alias ipbr='ip -br'
alias venv='. .venv/bin/activate'
alias qvenv='deactivate'
alias makevenv='python3 -m venv .venv'
alias hscan='nmap -sn 172.23.100.1-254'

#Sudo aliases
alias sudoe='sudo -E'
alias god='sudo'
alias update='sudo apt update'
alias upgrade='sudo apt full-upgrade'
alias upgradey='sudo apt full-upgrade -y'
alias both='sudo apt update && sudo apt full-upgrade -y'
alias sd='shutdown now'
alias rb='reboot'

#Vim aliases
alias v="vim"
alias vzsh="vim ~/.zshrc; source ~/.zshrc"
alias zshrc=vzsh
alias zrc=vzsh
alias vbsh="vim ~/.bashrc; source ~/.bashrc"
alias bashrc=vbsh
alias brc=vbsh
alias vimrc="vim ~/.vimrc"
alias vrc=vimrc
alias aliasrc="vim ~/.bash_aliases; source ~/.bash_aliases"
alias arc=aliasrc

