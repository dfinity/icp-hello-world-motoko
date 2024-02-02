#!/usr/bin/env python3

from pocket_ic import PocketIC
import unittest
from os import environ, path

REPO_ROOT = environ["GITPOD_REPO_ROOT"] if "GITPOD_REPO_ROOT" in environ else "/workspaces/icp-hello-world-motoko"
environ["POCKET_IC_BIN"] = REPO_ROOT + "/pocket-ic"
BASE_PATH = REPO_ROOT + "/.dfx/local/canisters/icp_hello_world_motoko_backend/"

class BackendCanisterTests(unittest.TestCase):
    def setUp(self) -> None:
        if not path.isdir(BASE_PATH):
            raise Exception('Run "dfx build" before running tests')
        with open(BASE_PATH + "icp_hello_world_motoko_backend.did", "r") as candid:
            self.candid = candid.read()
        with open(BASE_PATH + "icp_hello_world_motoko_backend.wasm", "rb") as wasm:
            self.wasm = wasm.read()
        return super().setUp()
    
    def test_backend_canister_greet(self):
        # Create and install canister
        pic = PocketIC()
        canister = pic.create_and_install_canister_with_candid(self.candid, self.wasm)

        # Call greet
        response = canister.greet("ICP")
        self.assertEqual(response[0], "Hello, ICP!")


if __name__ == "__main__":
    unittest.main()
