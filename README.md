# ICP Hello World Motoko

This repository provides a simple and quick way to start developing a canister smart contract for the [Internet Computer](https://internetcomputer.org/) in Motoko.
The repository can be used with macOS, Windows or Linux.

## Getting Started

To get started with Gitpod, click the button below:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/dfinity/icp-hello-world-motoko)

If you rather want to use GitHub Codespaces, click this button instead:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/dfinity/icp-hello-world-motoko?quickstart=1)

If you prefer running VS Code locally and not in the browser, click "Codespaces: ..." or "Gitpod" in the bottom left corner and select "Open in VS Code" in the menu that appears. 
If prompted, proceed by installing the recommended plugins for VS Code.

### Local Development

If you prefer to develop locally, please first install [Docker](https://www.docker.com/get-started/) and [VS Code](https://code.visualstudio.com/) and start them on your machine.
Next, click the following button to open the dev container locally:

[![Open locally in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/dfinity/icp-hello-world-motoko)

If prompted, install the required/recommended plugins for VS Code.

## Running your Project

After the IDE has opened, run `dfx deploy` in the terminal to deploy the example canister's frontend and backend in the dev environment. 
After the command has finished, click on the first green link at the end of the output to see your canister's frontend in the browser. 
**NOTE**: If the printed link does not work when developing remotely (in a web browser), run `./canister_url.sh` and click the link that is shown there.

For interactive development of the frontend canister, you can also start a node server by running `npm start`. You can find your canister's frontend running under http://localhost:8080.

If you make changes to the backend canister, remember to call `dfx deploy` first; the frontend canister's webpage can just be reloaded after changes have been made to reflect the changes you've made.

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
