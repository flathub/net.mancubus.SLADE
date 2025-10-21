#!/usr/bin/env bash

clear

# Build
flatpak-builder --repo=testing-repo --force-clean build-dir net.mancubus.SLADE.yaml

# Make a testing repository
flatpak --user remote-add --if-not-exists --no-gpg-verify slade-testing-repo testing-repo
flatpak --user install slade-testing-repo net.mancubus.SLADE -y
flatpak --user install slade-testing-repo net.mancubus.SLADE.Debug -y

# Update system
flatpak update -y

