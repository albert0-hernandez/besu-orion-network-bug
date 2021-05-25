// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
const hre = require("hardhat");

async function main() {
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  // await hre.run('compile');

  await hre.run('compile');

  // We get the contract to deploy
  const PublicLibrary = await hre.ethers.getContractFactory("PublicLibrary");
  const EternalStorage = await hre.ethers.getContractFactory("EternalStorage");
  const PublicLogic = await hre.ethers.getContractFactory("PublicLogic");

  const publicLibrary = await PublicLibrary.deploy();
  await publicLibrary.deployed();

  const PrivateLogic = await hre.ethers.getContractFactory("PrivateLogic",
    {
      libraries: {
        PublicLibrary: publicLibrary.address
      }
    }
  );

  const publicStorage = await EternalStorage.deploy();
  const publicLogic = await PublicLogic.deploy(publicStorage.address);
  await publicStorage.upgradeVersion(publicLogic.address);

  await publicStorage.deployed();
  await publicLogic.deployed();

  const privateStorage = await EternalStorage.deploy();
  const privateLogic = await PrivateLogic.deploy(privateStorage.address);
  await privateStorage.upgradeVersion(privateLogic.address);

  await privateStorage.deployed();
  await privateLogic.deployed();

  console.log(`publicLibrary: ${publicLibrary.address}`);
  console.log(`publicLogic: {storage: ${publicStorage.address}, logic: ${publicLogic.address}}`);
  console.log(`privateLogic: {storage: ${privateStorage.address}, logic: ${privateLogic.address}}`);

  await privateLogic.setBasicData11({
    data1: publicLogic.address,
    data2: publicLibrary.address,
    data3: true,
    data4: false,
    data5: 15,
    data6: 20,
    data7: true,
    data8: "0x736f6d6520737472696e67206f76657220333220636861726163746572732069",
    data9: false,
    data10: 25,
  });

  await privateLogic.setBasicData12({
    data1: 30
  });

  console.log(`validate: ${await privateLogic.validate()}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
