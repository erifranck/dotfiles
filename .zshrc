source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme https://github.com/halfo/lambda-mod-zsh-theme lambda-mod

antigen bundle jump
antigen apply

source ~/.aliases.sh

# BASE16_SHELL="$HOME/.config/base16-shell/base16-gooey.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


export EDITOR=nvim
# export FZF_DEFAULT_COMMAND='ag -g ""'
# export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###-tns-completion-start-###
if [ -f /home/user/.tnsrc ]; then 
    source /home/user/.tnsrc 
fi
###-tns-completion-end-###
#
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH=$PATH:"$ANDROID_HOME/platform-tools":$PATH:"$ANDROID_HOME/tools"

