


## testing
  - to test against a forked network, use the following command:
    ```bash
     forge test -vvvvv --fork-url https://api.calibration.node.glif.io/rpc/v1
    ```
## deloyment
  - to dry run the deployment to a calibrationnet, use the following command:
    ```bash
      forge script ./script/DealDeployer.s.sol -vvvv  --rpc-url calibrationnet --sig "run()" 
    ```
- to deploy to a calibrationnet, use the following command:
    ```bash
      forge script ./script/DealDeployer.s.sol -vvvv  --rpc-url calibrationnet --sig "run()" --broadcast
    ```