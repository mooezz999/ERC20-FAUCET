// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Faucet.sol";

contract FaucetScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Faucet faucet = new Faucet(0xb299bdD0CB3B527d43Ef640c67B1ec8e1dE0c204);

        vm.stopBroadcast();
    }
}
