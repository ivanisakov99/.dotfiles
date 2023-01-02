source $ENV_IMPROVEMENT_ROOT/anyshrc.sh

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat


# Change ZSH Options

# Create Aliases
# alias ls='ls -lAFh'
alias exa='exa -laFh --git'
alias bbd="brew bundle dump --force --describe --file $ENV_IMPROVEMENT_ROOT/Brewfile"
alias trail='<<<${(F)path}'

# Customise Prompt(s)
source ENV_IMPROVEMENT_ROOT/zsh.d/themes/default.zsh

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

