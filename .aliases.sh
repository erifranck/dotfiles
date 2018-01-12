# Git
alias gi="git init"
alias gst="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m "$1""
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gpo="git push"
alias gl="git pull"
alias glg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"

# npm
alias ni="npm install";
alias nis="npm i -S "
alias nid="npm i -D "
alias nig="npm i -g "
alias nr="npm run $1";
alias nrs="npm run start";
alias nrb="npm run build";
alias nrt="npm run test";
alias nrc="npm run commit";

# Clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

# Arch
alias ya="yaourt  --nameonly --pager --color --noconfirm $1"

# Files
alias l="ls -o -hX --group-directories-first"
alias la="ls -o -AhX --group-directories-first"
alias j="jump"
alias v='nvim'

alias rm='trash'

# Config
alias termiteconf="nvim ~/.config/termite/config"
alias zshrc="nvim ~/.zshrc && source ~/.zshrc"
alias vinit="cd ~/Code/dotfiles/.config/nvim && v init.vim"
alias i3conf="nvim ~/.i3/config"
alias tmuxconf="nvim ~/.tmux.conf"
alias xres="nvim ~/.Xresources && xrdb ~/.Xresources"

alias update.="gaa && gcm 'Update dotfiles' && gpo master"

# Man
alias h='tldr'

#django
alias osd="cd $HOME/omega/omega-service-desk && source $HOME/omega/env/bin/activate"
alias ors="python manage.py runserver" 
alias mgrt="python manage.py migrate" 
alias doff="deactivate"

#4geek
alias mgp="cd $HOME/4geeks/mall4g-public && npm start"
alias mgc="cd $HOME/4geeks/mall4g-webclient && npm start"
alias dpp="sudo ssh -i $HOME/.ssh/mall4g ubuntu@ec2-54-89-76-127.compute-1.amazonaws.com"
alias dpc="sudo ssh -i $HOME/.ssh/mall4g ubuntu@ec2-52-90-88-239.compute-1.amazonaws.com"

#Mkfile

mkfile() {
  mkdir -p -- "$1"
  touch -- "$1"/"$2"
}

androidadb() {
  adb reverse tcp:8181 tcp:8181
  adb shell input keyevent 82
}

runtron() {
  adb reverse tcp:9090 tcp:9090
}

alias newfile=mkfile
alias testandroid=androidadb
alias runreacttotron=runtron
