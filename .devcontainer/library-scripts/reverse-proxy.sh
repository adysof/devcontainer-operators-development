#!/usr/bin/env bash
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Adysof Solution SL. All rights reserved.
# Licensed under the MIT License.
#-------------------------------------------------------------------------------------------------------------
#
# Docs: https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/common.md
# Maintainer: The VS Code and Codespaces Teams
#
# Syntax: ./common-debian.sh [install zsh flag] [username] [user UID] [user GID] [upgrade packages flag] [install Oh My Zsh! flag] [Add non-free packages]

set -e

# Nginx 
echo "Installing Nginx..."
apt install nginx -y
