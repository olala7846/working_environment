# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

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

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Setup Default Editor - 20151127 by olala7846
EDITOR=/usr/local/bin/vim

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow git-flow-avh textmate lighthouse django)
source $ZSH/oh-my-zsh.sh
source ~/.bashrc

# Customize to your needs...

PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
PATH=$PATH:/usr/local/lib/phacility/arcanist/bin
alias ctags="`brew --prefix`/bin/ctags"
export PATH=$PATH:/Users/chaohsin-cheng/Library/Android/sdk/platform-tools
export PATH=$PATH:/Users/chaohsin-cheng/Library/Android/sdk/tools

##### Functions

function compileAndRun
{
  g++ $1 -o temp.out
  ./temp.out
}

##### thefuck https://github.com/nvbn/thefuck
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

##### Foundi Utilites
alias mosh2hulk='mosh 10.111.75.19'
export FD_APISERVER_TARGET_RSYNC_FOLDER='10.111.75.19:/home/chaohsin-cheng/api-server/src/'

# The next line updates PATH for the Google Cloud SDK.
source '/Users/chaohsin-cheng/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/chaohsin-cheng/google-cloud-sdk/completion.zsh.inc'

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# requently typo
alias tabe="vim"
