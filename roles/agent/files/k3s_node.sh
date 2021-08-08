#! /bin/bash

base_dir=$(dirname $(readlink -f "$0"))
k3s_name=$1
k3s_token=$2
k3s_version=$3
k3s_server_ip=$4

INSTALL_K3S_EXEC="agent" \
    K3S_NODE_NAME="node" \
    INSTALL_K3S_VERSION=$k3s_version \
    INSTALL_K3S_NAME=$k3s_name \
    K3S_TOKEN=$k3s_token \
    K3S_RESOLV_CONF=$base_dir/resolv.conf \
    K3S_URL="https://$k3s_server_ip:6443" \
    ./k3s_install.sh --with-node-id
