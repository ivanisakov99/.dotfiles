# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"


# Change ZSH Options

# Create Aliases
# alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'

# Customise Prompt(s)
setopt promptsubst
export PROMPT='
%1~ %L %# '
export PROMPT='${(r:$COLUMNS::-:)}'$PROMPT

export RPROMPT='%*'

# Add Locations to $PATH Variable


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

