#!/bin/bash

# Make sure we always run from the root
SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPTS_DIR/.."

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
    icp_hello_world_frontend: ${GREEN}https://${CODESPACE_NAME}-4943.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/?canisterId=${CANISTER_ID_ICP_HELLO_WORLD_MOTOKO_FRONTEND}${NORMAL}"
else
    echo -e "${BOLD}URLs:
  Frontend canister via browser
    icp_hello_world_frontend: ${GREEN}http://127.0.0.1:4943/?canisterId=${CANISTER_ID_ICP_HELLO_WORLD_MOTOKO_FRONTEND}${NORMAL}"
fi
