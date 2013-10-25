source ~/.zsh.d/zshrc
[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine

export NEO4J_HOME="/opt/neo4j"
export PATH="$HOME/.rbenv/bin:$PATH:$NEO4J_HOME/bin"
export PATH="/opt/node-0.10.19/bin:$PATH:"
#export PATH="/usr/local/node-0.10.19/bin:$PATH:"

eval "$(rbenv init -)"

alias be='bundle exec'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias sudo='sudo env PATH=$PATH'

# tmux autostart configure
if [ -z "$TMUX" -a -z "$STY" ]; then
    if type tmuxx >/dev/null 2>&1; then
        tmuxx
    elif type tmux >/dev/null 2>&1; then
        if tmux has-session && tmux list-sessions | egrep -q '.*]$'; then
            # デタッチ済みセッションが存在する
            tmux attach && echo "tmux attached session "
        else
            tmux -2 new-session && echo "tmux created new session"
        fi
    elif type screen >/dev/null 2>&1; then
        screen -rx || screen -D -RR
    fi
fi
