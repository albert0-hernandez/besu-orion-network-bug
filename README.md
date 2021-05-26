# 1. Run the blockchain network
The network is formed by with 1 besu validator and 2 besu non-validator nodes each one with a orion node connected. These are the names:

- validator (besu 21.1.3)
- node0-node (besu 21.1.3) with node0-orion attached (orion 1.6.0)
- node1-node (besu 21.1.3) with node1-orion attached (orion 1.6.0)

In order to boot-up the network, please read the markdown hyperledger-besu-orion-network/README.md file for more information.

The result of the boot up is a besu blockchain network running with a privacy group created between node0-node and node1-node.


# 2. Before Running the Test

Open the jvisualvm and attach a JMX connection to the exported port of node0-node container on port 8888 (localhost:8888). You should see the consumption of the memory resources as soon as the test is lanuched.
All blockchain tests will be sent to node0 (http://localhost:22001).

Once the test is initiated the node is totally blocked by the memory resource consumption and could not respond to a single api like:

     curl -X POST --data '{"jsonrpc":"2.0","method":"net_version","params":[],"id":53}' http://127.0.0.1:22001

The response received by web3js could be:
   - RPC error, and in the log of the node0-node will appear a trace of OutOfMemory (Heap)
   or:
   - Timeout of 300000ms exceeded.
     

# 3. Run the test

Now that the undesired behavior was detailed, please proceed to execute the test:

```
npm install
npx hardhat test test/private-contracts-test.js
```

# 4. Test Battery Conclusion

* This test battery were deployed on public state and no problem were reported to complete the test battery.
* Once that we change all "memory" modifier by calldata in the SmartContracts, **the problem dissapears.**

