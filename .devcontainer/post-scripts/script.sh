#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"

/bin/bash ./minikube.sh
/bin/bash ./kubernetes.sh
/bin/bash ./reverse-proxy.sh

cd -