#! /bin/bash

base_dir=$(dirname $(readlink -f "$0"))
k3s_name=$1
k3s_token=$2
k3s_version=$3

INSTALL_K3S_EXEC='server' \
    K3S_NODE_NAME='master' \
    INSTALL_K3S_VERSION=$k3s_version \
    INSTALL_K3S_NAME=$k3s_name \
    K3S_TOKEN=$k3s_token \
    K3S_RESOLV_CONF=$base_dir/resolv.conf \
    ./k3s_install.sh --cluster-init --with-node-id --write-kubeconfig-mode=644
