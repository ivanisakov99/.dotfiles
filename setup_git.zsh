#!/usr/bin/env zsh

echo "\n<<< Starting Git Setup >>>\n"

echo "Adding excludes file to global .gitconfig"
git config --global core.excludesFile "$ENV_IMPROVEMENT_ROOT/git/gitExcludes" 

echo "\n<<< Git Setup Complete >>>\n"
