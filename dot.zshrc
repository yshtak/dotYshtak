source ~/.zsh.d/zshrc

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine

#export NEO4J_HOME="/opt/neo4j"
#export PATH="$HOME/bin/:$HOME/.rbenv/bin:$PATH:$NEO4J_HOME/bin"
#export PATH="/opt/node/bin:$PATH:"
#export JAVA_HOME="/opt/jdk1.7.0"
export PATH="/usr/local/bin:$PATH:"
export PATH="$JAVA_HOME/bin:$PATH:"

eval "$(rbenv init -)"

alias be='bundle exec'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias sudo='sudo env PATH=$PATH'
#
archey3
