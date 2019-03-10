# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby golang django scala gem history history-substring-search terminalapp brew nanoc zsh-syntax-highlighting zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$PATH:"/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias wsm="sudo sshfs -o transform_symlinks -o follow_symlinks -o uid=$(id -u) -o gid=$(id -g) -o allow_other garrsato@garrsato.desktop.amazon.com:/workplace/garrsato/ /Users/garrsato/workplace/"

alias sshr="ssh garrsato-2c.aka.corp.amazon.com"
alias sshba="ssh aws-beta-portal-9003.sea19.amazon.com"
alias sshbb="ssh aws-beta-portal-0101.sea3.amazon.com"
alias sshga="aws-billingportal-sot-gamma-6001.iad6.amazon.com"
alias vimenv="vim ~/.zshrc" 
alias bbi="brazil-build test-integration-assert"   

#export PATH=$PATH:~/Cloud9BrazilBuild-1.0/bin

#export PATH="/apollo/env/SDETools/bin:$PATH"
export PATH="/apollo/env/SDETools/bin:$PATH"

alias cpush="git squash HEAD && git push origin :garrsato && git push origin HEAD:garrsato"
alias push="git push origin :garrsato && git push origin HEAD:garrsato"
alias cdsot="cd ~/workspace/AWSServicePortalWebsite/src/AWSServicePortalWebsite"
alias squash="git squash HEAD"
alias ri="git ri origin/mainline"
alias atmux="tmux attach -t work"
alias ntmux="tmux new -s work"
alias cdweb="cd ~/workspace/AWSBAPSWRubyUIWebsite/src/AWSBAPSWRubyUIWebsite"
alias cdcon="cd ~/workspace/AWSServicePortalWebsite/src/AWSServicePortalWebsiteConfig"

build_remote() {
      ssh garrsato.desktop.amazon.com "/bin/zsh -s " < ~/script
}
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"

export PATH="/apollo/env/SDETools/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

alias nap="tmux new-session -s apricot"
alias aap="tmux attach-session -t apricot"
alias kap="tmux kill-session -t apricot"
alias cdap="cd ~/workspace/APRICOT/src/AWSMPAMIPrimitiveControlService"
alias cdws="cd ~/workspace"
ssht (){ ssh -t "$1" 'tmux attach || tmux new || screen -DR'; }

 alias rl="source ~/.zshrc"
 alias tma="tmux attach-session -t"
 alias tmd="tmux detach-client"
 alias tmn="tmux new-session -s"
 alias tmls="tmux list-sessions"

alias cdvet="cdws && VettingWorkflows/src/AWSMPSellerWorkflows"

function bs() {
    dir_path=`pwd`
    package=${dir_path#*/src/}
    intermediate=${dir_path#*/workspace/}
    ws_name=${intermediate%/src/*}
    echo $ws_name
    echo $package
    /Users/garrsato/workspace/GS2/src/GS2/scripts/build_server.rb $ws_name $package server
}

function bb() {
    dir_path=`pwd`
    package=${dir_path#*/src/}
    intermediate=${dir_path#*/workspace/}
    ws_name=${intermediate%/src/*}
    echo $ws_name
    echo $package
    /Users/garrsato/workspace/GS2/src/GS2/scripts/build_server.rb $ws_name $package $1 do_clean
}

function bbnc() {
    bbhelper $1 no_clean
}

function bbhelper() {
    dir_path=`pwd`
    package=${dir_path#*/src/}
    intermediate=${dir_path#*/workspace/}
    ws_name=${intermediate%/src/*}
    echo $ws_name
    echo $package
    /Users/garrsato/workspace/GS2/src/GS2/scripts/build_server.rb $ws_name $package $1 $2
}

function addshare() {
    dir_path=`pwd`
    package=${dir_path#*/src/}
    git remote add share ssh://git.amazon.com:2222/pkg/$1/share/garrsato
}

function addbackup() {
    dir_path=`pwd`
    package=${dir_path#*/src/}
    git remote add backup ssh://git.amazon.com:2222/pkg/$1/backup/garrsato
}

alias bbcr="brazil-build clean && brazil-build release"

function kdiff() {
    git difftool $1~1 $1 -y -t Kaleidoscope
}
alias kdh="kdiff HEAD"

alias cdmas="cd /Users/garrsato/workspace/MasterBlaster/src/AWSMPAMIVulnerabilityScanner"
alias cdvwf="cd /Users/garrsato/workspace/VettingWorkflows/src/AWSMPSellerWorkflows"

alias cddata="cd ~/interviews/data_structures"

function car() {
    javac -g $1.java && java $1
}

alias cdint="cd /Users/garrsato/workspace/ruby_interview_prep"
alias cdgs="cd /Users/garrsato/workspace/GS2/src/GS2"

function bamp() {
    bb build && cd .. && cd AWSMPSellerPortalServlet && bb server-gamma && cd .. && cd AMMPProductFragment
}

alias cdamp="cd /Users/garrsato/workspace/AMMP/src"

function catlog() {
    /Users/garrsato/workspace/GS2/src/GS2/scripts/cat_logs.rb $1
}

function catamp() {
    catlog "AWSMPSellerPortalServlet_build.log"
}

function catfile() {
    /Users/garrsato/workspace/GS2/src/GS2/scripts/cat_file.rb $1
}

function pt() {
    dir_path=`pwd`
    package=${dir_path#*/src/}
    intermediate=${dir_path#*/workspace/}
    ws_name=${intermediate%/src/*}
    echo $ws_name
    echo $package
    /Users/garrsato/workspace/GS2/src/GS2/scripts/pass_through.rb $ws_name $package $1
}

export SSH_AUTH_SOCK=$HOME/.ssh_auth_sock
alias screpin='killall ssh-agent; source ~/.ssh-agent-start'

# alias ssh="assh"

export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin:/Users/garrsato/bin"

function add_alias() {
}

alias cdfmc="cd /Users/garrsato/workspace/test/src/FleetManagementConsole"
alias cdk='cdws && cd K2Scripts/src/AWSKumoKonsoleCustomerServiceScripts'
alias cdb='cdws && cd Bdlis/src/'
alias fix_bbaa="cd /tmp && wget http://kickstart/extras/snitch-agent-2.271-1.i386.rpm && sudo rpm -Uvh snitch-agent-2.271-1.i386.rpm"

alias odin="ssh -L 2009:localhost:2009 garrsato-2c.aka.corp.amazon.com -f -N"

export PATH=$HOME/.toolbox/bin:$PATH
export PATH=$PATH:$HOME/.odin-tools/env/OdinRetrievalScript-1.0/runtime/bin
export PATH=$PATH:/opt/apache-maven/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
