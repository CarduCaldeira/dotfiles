#!/bin/bash

echo ">> Configuring AWS CLI..."
mkdir -p ~/.aws
envsubst < $(pwd)/credentials.template > ~/.aws/credentials
cp $(pwd)/config ~/.aws/config

echo ">> Applying VSCode settings..."
mkdir -p ~/.config/Code/User
ln -sf $(pwd)/settings.json ~/.config/Code/User/settings.json

echo ">> Applying gitconfig..."
ln -sf $(pwd)/gitconfig ~/.gitconfig

echo ">> Environment successfully configured."
