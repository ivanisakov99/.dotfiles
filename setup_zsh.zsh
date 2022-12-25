#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

echo "Enter superuser (sudo) password to edit /ets/shells"
echo '/opt/homebrew/bin/zsh' | sudo tee -a 'etc/shells' >/dev/null

echo "Enter user password to change login shell"
chsh -s '/opt/homebrew/bin/zsh'

echo "\n<<< ZSH Setup Complete >>>\n"