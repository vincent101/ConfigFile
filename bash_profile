PATH=/usr/local/bin:$PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# set colorful terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# alias
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -ii'

# proxychain-ng
alias gfw="proxychains4"

# open tmux session r
alias tmuxCreateMySession='tmux new -s mySession'
alias tmuxAttachMySession='tmux attach -t mySession'

# ssh @raspberry
alias loginRaspberry='ssh pi@192.168.99.254'

# mysql
# $ mysql -u root -p  #loggin on root, password is root
#alias mysql='/usr/local/mysql/bin/mysql' 
#alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

# matlab
#PATH=$PATH:/Applications/MATLAB_R2014b.app/bin
#alias matlab='matlab -nodesktop -nosplash'
#alias mscript='matlab -nodesktop -nosplash -r'

