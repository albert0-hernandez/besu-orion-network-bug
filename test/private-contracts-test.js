const EternalStorageArtf = hre.artifacts.readArtifact("EternalStorage");
const PublicLogicArtf = hre.artifacts.readArtifact("PublicLogic");
const PrivateLogicArtf = hre.artifacts.readArtifact("PrivateLogic");
const PublicLibraryArtf = hre.artifacts.readArtifact("PublicLibrary");

const EEAClient = require("web3-eea");
const Web3 = require("web3");
//The values of some of the following constants can be found inside hyperledger-besu-orion-network folder
const privateFrom = "Pvoq/2SSAeECW5NWk8HDNw+goyunM4fO6c98Hcb8sWE=" // config/peers/node0/orion/orion.pub 
const privateKey = "9e5c50f9c8d81cadcdd53da98ecb466bdeb0e148b7e062b0d673938b3bcddbe8" //Random key
const privacyGroupId = "UVZoQkxVbE9SekF3TURBd01EQXdNREF3TURBd01EQXc="
const host = "http://127.0.0.1:22001"; //configured in config/peers/node0/docker-compose.yaml
const chainId = 2021; //from config/network/genesis.json

const eea = new EEAClient(new Web3(host),chainId);

let EternalStorage
let PublicLogic
let PrivateLogic
let PublicLibrary

let publicLibraryAddress;
let publicStorageAddress;
let publicLogicAddress;
let privateStorageAddress;
let privateLogicAddress;

const basicData11 = {
  data1: "0x1234567890123456789012345678901234567890", 
  data2: "0x1234567890123456789012345678901234567891",
  data3: true,
  data4: true,
  data5: 5,
  data6: 6,
  data7: true,
  data8: "0x0000000000000000000000000000000000000000000000000000000000000001",
  data9: 9,
  data10: 10
}

const basicData12 = {
  data1: 12
}

describe('Integration test', async () => {
  beforeEach(async ()=>{
    EternalStorage = await EternalStorageArtf
    PublicLogic = await PublicLogicArtf
    PrivateLogic = await PrivateLogicArtf
    PublicLibrary = await PublicLibraryArtf
    await deployContracts();
  });

  it("Integration test", async function() {
    basicData11.data1 = publicLogicAddress;
    await privSend(PrivateLogic.abi, privacyGroupId, privateLogicAddress, "setBasicData11", [basicData11]);
    let currentData = await privCall(PrivateLogic.abi, privacyGroupId, privateLogicAddress, "getBasicData11");
    console.log("Calling validate. Data is ", JSON.stringify(currentData));
    console.log(await privCall(PrivateLogic.abi, privacyGroupId, privateLogicAddress, "validate"));
  });
});

async function deployContracts() {
    console.log("Deploy public storage");
    publicStorageAddress = (await privDeploy(EternalStorage.abi, privacyGroupId, EternalStorage.bytecode)).contractAddress;
    console.log("Deploy public logic");
    publicLogicAddress = (await privDeploy(PublicLogic.abi, privacyGroupId, PublicLogic.bytecode, [publicStorageAddress])).contractAddress;
    console.log("UpgradeVersion in EternalStorage (public storage)");
    await privSend(EternalStorage.abi, privacyGroupId, publicStorageAddress, "upgradeVersion",[publicLogicAddress]);

    //Deploy library and link private logic
    console.log("Deploy public library");
    publicLibraryAddress = (await privDeploy(PublicLibrary.abi, privacyGroupId, PublicLibrary.bytecode)).contractAddress.toLowerCase();
    let privateLogicBytecode = PrivateLogic.bytecode.replace(/__\$.{34}\$__/g, publicLibraryAddress.replace("0x",""));
    
    //Deploy private logic
    console.log("Deploy private storage");
    privateStorageAddress = (await privDeploy(EternalStorage.abi, privacyGroupId, EternalStorage.bytecode)).contractAddress;
    console.log("Deploy private logic");
    privateLogicAddress = (await privDeploy(PrivateLogic.abi, privacyGroupId, privateLogicBytecode, [privateStorageAddress])).contractAddress;
    console.log("UpgradeVersion in EternalStorage (private storage)");
    await privSend(EternalStorage.abi, privacyGroupId, privateStorageAddress, "upgradeVersion", [privateLogicAddress]);
    
    console.log("All contracts deployed: ", {
      publicLibraryAddress,
      publicStorageAddress,
      publicLogicAddress,
      privateStorageAddress,
      privateLogicAddress
    })
}

async function privDeploy(abi, privacyGroupId, linkedByteCode, arguments = null) {
  const contract = new eea.eth.Contract(abi);

  const transaction = {
      data: contract.deploy({data: linkedByteCode, arguments: arguments}).encodeABI()
  };

  transaction.privateFrom = privateFrom;
  transaction.privacyGroupId = privacyGroupId;
  transaction.privateKey = privateKey;
  transaction.gasPrice = 40000;
  transaction.gasLimit = 20000000;
  const transactionHash = await eea.eea.sendRawTransaction(transaction);
  return await eea.priv.getTransactionReceipt(transactionHash, privateFrom);
}

async function privCall(abi, privacyGroupId, address, method, isGanache = false, arguments = null, blockNumber = "latest"){
  const contract = new eea.eth.Contract(abi);

  // eslint-disable-next-line no-underscore-dangle
  const functionAbi = contract._jsonInterface.find(e => {
      return e.name === method;
  });

  const functionArgs =
      arguments !== null
          ? eea.eth.abi.encodeParameters(functionAbi.inputs, arguments).slice(2)
          : null;

  const functionCall = {
      to: address,
      data:
          functionArgs !== null
              ? functionAbi.signature + functionArgs
              : functionAbi.signature,
      privacyGroupId: privacyGroupId,
      blockNumber: blockNumber
  };

  let result;
  if (isGanache) {
      result = await eea.eth.call(functionCall);
  } else {
      result = await eea.priv.call(functionCall);
  }

  return eea.eth.abi.decodeParameters(functionAbi.outputs, result);
}

async function privSend(abi, privacyGroupId, address, method, arguments = null) {
  const contract = new eea.eth.Contract(abi);

  // eslint-disable-next-line no-underscore-dangle
  const functionAbi = contract._jsonInterface.find(e => {
      return e.name === method;
  });

  const functionArgs =
      arguments !== null
          ? eea.eth.abi.encodeParameters(functionAbi.inputs, arguments).slice(2)
          : null;

  const functionCall = {
      to: address,
      data:
          functionArgs !== null
              ? functionAbi.signature + functionArgs
              : functionAbi.signature,
      privateFrom: privateFrom,
      privacyGroupId: privacyGroupId,
      privateKey: privateKey,
      gasPrice:40000,
      gasLimit:20000000
  };
  
  let privateTxHash = await eea.eea.sendRawTransaction(functionCall);
  // console.log("Transaction Hash:", privateTxHash);
  return await eea.priv.getTransactionReceipt(privateTxHash);
}
