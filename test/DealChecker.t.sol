// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
 import {DealChecker} from '../src/DealChecker.sol'; 
import {MarketAPI} from "@zondax/filecoin-solidity/contracts/v0.8/MarketAPI.sol";
import {CommonTypes} from "@zondax/filecoin-solidity/contracts/v0.8/types/CommonTypes.sol";
import {MarketTypes} from "@zondax/filecoin-solidity/contracts/v0.8/types/MarketTypes.sol";
import {AccountTypes} from "@zondax/filecoin-solidity/contracts/v0.8/types/AccountTypes.sol";
import {AccountCBOR} from "@zondax/filecoin-solidity/contracts/v0.8/cbor/AccountCbor.sol";
import {MarketCBOR} from "@zondax/filecoin-solidity/contracts/v0.8/cbor/MarketCbor.sol";
import {BytesCBOR} from "@zondax/filecoin-solidity/contracts/v0.8/cbor/BytesCbor.sol";
 import {CBOR} from "solidity-cborutils/contracts/CBOR.sol";

contract TestDealChecker is Test {

    address admin = address(123);
    address Bob = address(456);
    address Alice = address(789);
    address miner = address(987);
    address cleint= address(123);
    DealChecker fileDeal;
    
    function setUp() external {
    // deploy sender 
    // deploy receiver 
    
    // 
   // define address array for admins 
    address[] memory admins = new address[](1);
    admins[0] = admin;
     fileDeal = new DealChecker();
  
      }  

     function testCheckDeal() public{
   
        bytes  memory pieceCid = bytes("baga6ea4seaqkaefdzn7rzgxs7w2ablcc75wqvnve6y5slap3dmcxiffjw3jtioy");
        bytes memory cid = bytes("QmUHZ9CVsHYvLpAhA6egP9Y878Fbd1Yr4io98STVHJA2yr");
        uint256 parentCertId = 1;
        uint64 size = 16777216;
 
      
        uint64[] memory dealIds = new uint64[](1);
        dealIds[0] = 136968;
      fileDeal.dealCheck( dealIds[0]);
             
        }


}
 
 
