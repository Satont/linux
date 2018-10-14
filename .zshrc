source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle npm

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme sunaku

antigen apply
alias c="git cherry-pick"