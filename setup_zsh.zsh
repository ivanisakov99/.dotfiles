#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

local new_shell='/opt/homebrew/bin/zsh'

# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq $new_shell '/etc/shells'; then
    echo "$new_shell already exists in /etc/shells"
else
echo "Enter superuser (sudo) password to edit /ets/shells"
    echo $new_shell | sudo tee -a '/etc/shells' >/dev/null
fi
echo "\n"

if [ "$SHELL" = "$new_shell" ]; then
    echo "SHELL is already $new_shell"
else
echo "Enter user password to change login shell"
    chsh -s $new_shell
fi
echo "\n"

echo "\n<<< ZSH Setup Complete >>>\n"
