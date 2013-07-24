source ~/.zsh.d/zshrc

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine                                
export NEO4J_HOME="/opt/neo4j"
export PATH="$HOME/.rbenv/bin:$PATH:$NEO4J_HOME/bin"

eval "$(rbenv init -)"

alias be='bundle exec'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
