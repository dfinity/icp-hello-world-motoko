# ICP Hello World Motoko

This repository provides a quick and easy way to start developing a canister smart contract for the [Internet Computer](https://internetcomputer.org/) in Motoko.
The repository can be used with macOS, Windows or Linux.

## Getting Started

To get started with Gitpod, click the button below:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/dfinity/icp-hello-world-motoko)

If you rather want to use GitHub Codespaces, click this button instead:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/dfinity/icp-hello-world-motoko?quickstart=1)

If you prefer running VS Code locally and not in the browser, click "Codespaces: ..." or "Gitpod" in the bottom left corner and select "Open in VS Code" in the menu that appears. 
If prompted, proceed by installing the recommended plugins for VS Code.

### Running your Project

After the IDE has opened, run `dfx start`, then open a new terminal and run `dfx deploy` to deploy the frontend and backend. 
Click on the first green link at the end of the output to see your canister's frontend in the browser.
To interact with the backend canister, click on the second green link.
**NOTE**: When developing in GitHub Codespaces, run `./scripts/canister_urls.py` and use the links that are shown there.

For interactive development of the frontend canister, you can also start a local dev server by running `npm run dev`.
You can find your canister's frontend running under http://127.0.0.1:5173.

If you make changes to the backend canister, remember to call `dfx deploy` first; it suffices to reload the frontend canister's webpage to reflect the changes you've made.
If your environment was restarted or has been inactive over some time, you might need to run `dfx start --background` before running `dfx deploy`.

## Testing your Project

To run the [integration tests](/src/backend/tests/integration_tests.py) for your backend canister, first run `dfx build` to build the canister, and then `./src/backend/tests/integration_tests.py`.
If the canisters have not yet been created, run `dfx canister create --all` before `dfx build`.

## Local Development

If you prefer to develop locally, first install [Docker](https://www.docker.com/get-started/) and [VS Code](https://code.visualstudio.com/) and start them on your machine.
Next, click the following button to open the dev container locally:

[![Open locally in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/dfinity/icp-hello-world-motoko)

If prompted, install the required/recommended plugins for VS Code.

## Documentation and Guides

To learn more before you start working on this project, see the following documentation available online:

- [Quick Start](https://internetcomputer.org/docs/current/developer-docs/setup/deploy-locally)
- [SDK Developer Tools](https://internetcomputer.org/docs/current/developer-docs/setup/install)
- [Motoko Programming Language Guide](https://internetcomputer.org/docs/current/motoko/main/motoko)
- [Motoko Language Quick Reference](https://internetcomputer.org/docs/current/motoko/main/language-manual)

If you want to start working on your project right away, you might want to try the following commands to familiarize yourself with `dfx`:

```bash
dfx help
dfx canister --help
```
