source $ENV_IMPROVEMENT_ROOT/anyshrc.sh

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat

typeset -ga precmd_functions

# Change ZSH Options

# Create Aliases
alias exa='exa -laFh --git'
alias bbd="brew bundle dump --force --describe --file $ENV_IMPROVEMENT_ROOT/Brewfile"
alias trail='<<<${(F)path}'

# Customise Prompt(s)
autoload colors && colors

## Override ZSH_THEME to other themes (e.g. vcs)
ZSH_THEME='vcs_info'
if [[ -z "$ZSH_THEME" ]]; then
    ZSH_THEME="default"
fi
source $ENV_IMPROVEMENT_ROOT/zsh.d/themes/$ZSH_THEME.zsh

if [[ -n "$ENABLE_VCS_INFO" ]]; then
    source $ENV_IMPROVEMENT_ROOT/zsh.d/vcs_info.zsh
fi

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

######################### ZSH options ################################
setopt ALWAYS_TO_END	       # Push that cursor on completions
setopt AUTO_NAME_DIRS          # Change directories to variable names
setopt AUTO_PUSHD              # Push directories on every cd

######################### History options ############################
setopt EXTENDED_HISTORY        # Store time in history
setopt HIST_EXPIRE_DUPS_FIRST  # Unique events are more usefull to me
setopt HIST_VERIFY	           # Make those history commands nice
setopt INC_APPEND_HISTORY      # Immediatly insert history into history file
HISTSIZE=16000                 # Spots for duplicates/uniques
SAVEHIST=15000                 # Unique events guarenteed
HISTFILE=~/.history
setopt histignoredups          # Ignore duplicates of the previous event 

# There are many other ways to customize your shell:
# - Improve line editor (completions, menu, navigation, etc.)
# - Add locations to $PATH variable (or $path array)
# - Use ZSH plugins
# - Change key bindings
# - Add "zstyles" for completions & more

