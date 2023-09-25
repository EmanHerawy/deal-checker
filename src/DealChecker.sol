//SPDX-license-identifier: MIT
pragma solidity ^0.8.17;

import {MarketAPI} from "@zondax/filecoin-solidity/contracts/v0.8/MarketAPI.sol";
import {CommonTypes} from "@zondax/filecoin-solidity/contracts/v0.8/types/CommonTypes.sol";
import {MarketTypes} from "@zondax/filecoin-solidity/contracts/v0.8/types/MarketTypes.sol";
import {AccountTypes} from "@zondax/filecoin-solidity/contracts/v0.8/types/AccountTypes.sol";
import {AccountCBOR} from "@zondax/filecoin-solidity/contracts/v0.8/cbor/AccountCbor.sol";
import {MarketCBOR} from "@zondax/filecoin-solidity/contracts/v0.8/cbor/MarketCbor.sol";
import {BytesCBOR} from "@zondax/filecoin-solidity/contracts/v0.8/cbor/BytesCbor.sol";
 import {CBOR} from "solidity-cborutils/contracts/CBOR.sol";
import  "@zondax/filecoin-solidity/contracts/v0.8/utils/Actor.sol";
import  "@zondax/filecoin-solidity/contracts/v0.8/SendAPI.sol";
import {Misc} from "@zondax/filecoin-solidity/contracts/v0.8/utils/Misc.sol";
import {FilAddresses} from "@zondax/filecoin-solidity/contracts/v0.8/utils/FilAddresses.sol";


 
contract DealChecker  {
 function dealCheck(uint64 dealId) public returns(uint64 clientRet, uint64 providerRet, CommonTypes.BigInt  memory totalPrice, CommonTypes.FilActorId  clientActor , MarketTypes.GetDealDataCommitmentReturn memory commitmentRet) {
      
        commitmentRet = MarketAPI
            .getDealDataCommitment(dealId);

              // get dealer (bounty hunter client)
          clientRet = MarketAPI.getDealClient(dealId);
          totalPrice = MarketAPI.getDealTotalPrice(dealId);
           clientActor = CommonTypes.FilActorId.wrap(clientRet);
         providerRet = MarketAPI.getDealProvider(dealId);

   }

    

}
