#!/bin/sh

# Remove .git directory and reinitialize an empty Git repository
rm -rf .git
git init

# Open pyproject.toml and replace the package name with the current directory name
proj_name=${PWD##*/}

sed -i "s/placeholder/$proj_name/g" pyproject.toml

# If using Git Bash on Windows, use python.bat files in poetry environment
if [ "$MSYSTEM" != "" ]; then
    echo "Running via Git Bash, presumably on Windows"
    poetry env use python.bat
fi

# Install dependencies
poetry install
