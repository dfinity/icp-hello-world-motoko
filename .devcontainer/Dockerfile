FROM --platform=linux/amd64 ubuntu:22.04

ENV NVM_DIR=/root/.nvm
ENV NVM_VERSION=v0.39.7
ENV NODE_VERSION=21.5.0

# Install a basic environment needed for our build tools
RUN apt -yq update && \
    apt -yqq install --no-install-recommends curl ca-certificates \
    build-essential pkg-config libssl-dev llvm-dev libunwind-dev liblmdb-dev clang cmake rsync git

# Install Node.js using nvm
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin:${PATH}"
RUN curl --fail -sSf https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash
RUN . "${NVM_DIR}/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "${NVM_DIR}/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "${NVM_DIR}/nvm.sh" && nvm alias default v${NODE_VERSION}

# Install dfx
RUN sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"

# COPY .devcontainer/docker-entrypoint.sh /
# RUN chmod +x /docker-entrypoint.sh
# CMD [ "/docker-entrypoint.sh" ]

# EXPOSE 4943
