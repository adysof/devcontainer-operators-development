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
echo "Reverse Proxy Nginx..."
sudo rm /etc/nginx/sites-enabled/default
sudo touch /etc/nginx/sites-enabled/minikube.conf
echo "server {
    listen 80;

    location / {
        proxy_pass http://$(minikube ip);
        proxy_pass_request_headers      on;
        proxy_set_header Host \$http_host;
    }
}" | sudo tee -a /etc/nginx/sites-enabled/minikube.conf

sudo service nginx start
