#!/usr/bin/env bash

cd "$(dirname "$0")"

check_command() {
    kubectl cluster-info 1>/dev/null 2>/dev/null
    return $?
}

check_k8s() {
    printf "Waiting for Kubernetes"
    check_command
    while [ $? -ne 0 ]
    do
        printf "."
        sleep 2
        check_command
    done
    echo -n ".\nKubernetes is working"
    kubectl cluster-info
}

# Checks
check_k8s

# Actions

/usr/local/bin/kubectl apply -f ./yaml/nginx.yaml

# cd -
