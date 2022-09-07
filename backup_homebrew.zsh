#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Backup >>>\n"

brew bundle dump --force --describe
