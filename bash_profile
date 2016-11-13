PATH=/usr/local/bin:$PATH

alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -ii'

alias mysql='/usr/local/mysql/bin/mysql' 
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

PATH=$PATH:/Applications/MATLAB_R2014b.app/bin
alias matlab='matlab -nodesktop -nosplash'
alias mscript='matlab -nodesktop -nosplash -r'

# open tmux session r
alias tn='tmux new -s mySession'
alias tm='tmux attach -t mySession'
