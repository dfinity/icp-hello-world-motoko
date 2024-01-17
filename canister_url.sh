#!/bin/bash

if [ -f .env ]; then
    source .env
else
    echo "Please run 'dfx deploy' first."
    exit 1
fi

GREEN='\033[1;32m'
NORMAL='\033[0m'
BOLD='\033[1m'

if [ -n "${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}" ]; then
    echo -e "${BOLD}URLs:
  Frontend canister via browser
    icp_hello_world_frontend: ${GREEN}https://${CODESPACE_NAME}-4943.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/?canisterId=${CANISTER_ID_ICP_HELLO_WORLD_FRONTEND}${NORMAL}${BOLD}
  Backend canister via Candid interface:
    icp_hello_world_backend: ${GREEN}https://${CODESPACE_NAME}-4943.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/?canisterId=be2us-64aaa-aaaaa-qaabq-cai&id=${CANISTER_ID_ICP_HELLO_WORLD_BACKEND}${NORMAL}"
else
    echo -e "${BOLD}URLs:
  Frontend canister via browser
    icp_hello_world_frontend: ${GREEN}http://127.0.0.1:4943/?canisterId=${CANISTER_ID_ICP_HELLO_WORLD_FRONTEND}${NORMAL}${BOLD}
  Backend canister via Candid interface:
    icp_hello_world_backend: ${GREEN}http://127.0.0.1:4943/?canisterId=be2us-64aaa-aaaaa-qaabq-cai&id=${CANISTER_ID_ICP_HELLO_WORLD_BACKEND}${NORMAL}"
fi
