#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ">> Configuring AWS CLI..."
mkdir -p ~/.aws
envsubst < "$DIR/credentials.template" > ~/.aws/credentials
cp "$DIR/config" ~/.aws/config

echo ">> Applying VSCode settings..."
mkdir -p ~/.config/Code/User
ln -sf "$DIR/settings.json" ~/.config/Code/User/settings.json

echo ">> Applying gitconfig..."
ln -sf "$DIR/gitconfig" ~/.gitconfig

echo ">> Environment successfully configured."