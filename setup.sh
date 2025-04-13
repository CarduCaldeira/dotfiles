#!/bin/bash

echo ">> Configuring AWS CLI..."
mkdir -p ~/.aws
envsubst < $(pwd)/aws/credentials.template > ~/.aws/credentials
cp $(pwd)/aws/config ~/.aws/config

echo ">> Applying VSCode settings..."
mkdir -p ~/.config/Code/User
ln -sf $(pwd)/vscode/settings.json ~/.config/Code/User/settings.json

echo ">> Applying gitconfig..."
ln -sf $(pwd)/git/gitconfig ~/.gitconfig

echo ">> Environment successfully configured."
