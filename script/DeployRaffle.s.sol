// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {Raffle} from "../src/Raffle.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployRaffle is Script {
    function run() external returns (Raffle) {
        HelperConfig helperConfig = new HelperConfig();
        (
            uint256 enteranceFee,
            uint256 interval,
            address vrfCoordinator,
            bytes32 gasLine,
            uint64 subscriptionId,
            uint32 callbackGasLimit
        ) = helperConfig.activeNetworkConfig();
        vm.startBroadcast();
        Raffle raffle = new Raffle(
            enteranceFee,
            interval,
            vrfCoordinator,
            gasLine,
            subscriptionId,
            callbackGasLimit
        );
        vm.stopBroadcast();
        return raffle;
    }
}
