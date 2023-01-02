# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat

typeset -ga precmd_functions

# Change ZSH Options

# Create Aliases
# alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe --file ~/.dotfiles/Brewfile'
alias trail='<<<${(F)path}'

# Customise Prompt(s)
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

# Write Handy Functions
function mkcd() {
    mkdir -p "$@" && cd "$_";
}

# ...and Other Surprises


# There are many other ways to customize your shell:
# - Set variables
# - Create aliases
# - Customize the prompt
# - Write handy functions
# - Change ZSH options
# - Adjust history functionality
# - Improve line editor (completions, menu, navigation, etc.)
# - Add locations to $PATH variable (or $path array)
# - Use ZSH plugins
# - Change key bindings
# - Add "zstyles" for completions & more

