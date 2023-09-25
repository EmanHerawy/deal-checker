// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
  import {DealChecker} from '../src/DealChecker.sol';
 contract DealDeployer is Script {
    function run() external {
        uint256 senderPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(senderPrivateKey);

        DealChecker    deal = new DealChecker();
               console.log(
            "EDeal contract deployed with address: ",
            address(deal)
        );

      
        uint64[] memory dealIds = new uint64[](1);
        dealIds[0] = 136999;
      
          
           deal.dealCheck( dealIds[0]);
        vm.stopBroadcast();
    }
}

 

 