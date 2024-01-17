#!/bin/bash

if [ -n "${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}" ]; then
    echo "https://${CODESPACE_NAME}-4943.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/?canisterId=${CANISTER_ID}"
else
    echo "Not in a remote dev container. Use the links dfx deploy gives you."
fi
