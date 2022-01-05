###############################################################################

### GLOBAL SETTINGS ###########################################################

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment to enable automatic upgrades
#DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Set language
#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8

# Set default editor
export EDITOR='vim'
export VISUAL='vim'

# Set AUTO_CD
setopt AUTO_CD

# Set global path
typeset -U path
path=(~/bin /usr/local/sbin $path[@])

# ZSH home dir
zsh_home="${HOME}/.zsh"

###############################################################################

### OS SETTINGS ###############################################################

# Detect OS and source config file
os=$(uname -s | tr '[:upper:]' '[:lower:]')
[[ -f "${zsh_home}/${os}.zsh" ]] && . "${zsh_home}/${os}.zsh"

###############################################################################

### PLUGINS ###################################################################

[[ -f "${zsh_home}/plugins.zsh" ]] && . "${zsh_home}/plugins.zsh"

###############################################################################

### ALIASES (last) ############################################################

# set ls aliases
timestyle='--time-style="+%Y-%m-%d %H:%M:%S"'
alias la="ls -halF ${timestyle}"
alias ll="ls -hAlF ${timestyle}"
alias lr="ls -hAlFR ${timestyle}"
alias lt="ls -hAlFt ${timestyle}"

# automatically run git against dotfiles bare repo
alias bdf="git --git-dir=${HOME}/.bdf.git --work-tree=${HOME}"

###############################################################################