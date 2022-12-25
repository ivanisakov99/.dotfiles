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

if sh --version | grep -q zsh; then
    echo "/prvate/var/select/sh already linked to /bin/zsh"
else
    echo "Enter superuser (sudo) password to symlink sh to zsh"
    # Looked cute, might delete later, idk
    sudo ln -sfv /bin/zsh /private/var/select/sh

    # TODO I'd like for this to work instead.
    # sudo ln -svf /opt/homebrew/bin/zsh /private/var/select/sh
fi
echo "\n"

echo "\n<<< ZSH Setup Complete >>>\n"
