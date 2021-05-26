# 1. Run the blockchain network
Read the file hyperledger-besu-orion-network/README.md file for more information.

# 2. Run the test

```
npm install
npx hardhat test test/private-contracts-test.js
```
With the default besu network configuration, the above test will fail due to a Java `OutOfMemory` error.

# About the test

The private-contracts-test do the following:
1. Smart contract deployment in a privacy group
2. Invoke PrivateLogic smart contract to reproduce the `OutOfMemory` error

All blockchain requests are sent to node0 (http://localhost:22001).

# Change test configuration
Feel free to change the test setup by modifying the configuration constants in the following lines of the test/private-contracts-test.js file:

```
//The values of some of the following constants can be found inside hyperledger-besu-orion-network folder
const privateFrom = "Pvoq/2SSAeECW5NWk8HDNw+goyunM4fO6c98Hcb8sWE=" // config/peers/node0/orion/orion.pub 
const privateKey = "9e5c50f9c8d81cadcdd53da98ecb466bdeb0e148b7e062b0d673938b3bcddbe8" //Random key
const privacyGroupId = "UVZoQkxVbE9SekF3TURBd01EQXdNREF3TURBd01EQXc="
const host = "http://127.0.0.1:22001"; //configured in config/peers/node0/docker-compose.yaml
const chainId = 2021; //from config/network/genesis.json
```