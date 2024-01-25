from pocket_ic import PocketIC
import unittest
from os import environ, path

environ["POCKET_IC_BIN"] = "/workspaces/icp-hello-world-motoko/pocket-ic"
BASE_PATH = "/workspaces/icp-hello-world-motoko/.dfx/local/canisters/icp_hello_world_motoko_backend/"

class BackendCanisterTests(unittest.TestCase):
    def setUp(self) -> None:
        if not path.isdir(BASE_PATH):
            raise Exception("Please run dfx deploy before running tests")
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
        response = canister.greet("ICP")[0]
        self.assertEqual(response,"Hello, ICP!")


if __name__ == "__main__":
    unittest.main()
