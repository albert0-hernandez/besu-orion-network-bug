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

  await publicLogic.setBasicData01({
    data1: "data1",
    data2: "data2",
    data3: 985,
    data4: 980,
    data5: "data5",
    data6: 975,
    data7: false,
    data8: 970,
    data9: true
  });
  await publicLogic.setBasicData02({
    data1: 15,
    data2: 20,
    data3: 25
  });
  await publicLogic.setBasicData03({
    data1: 50,
    data2: 45,
    data3: 40,
    data4: 35,
    data5: 30
  });
  await publicLogic.setBasicData04({
    data1: 90,
    data2: 95,
    data3: 100,
    data4: 0,
    data5: 0,
    data6: 0,
    data7: true,
    data8: false
  });
  await publicLogic.setBasicData05({
    data1: 1000,
    data2: 100,
    data3: true,
    data4: false,
    data5: -10000,
    data6: -100,
    data7: true,
    data8: false,
    data9: true,
    data10: -10,
    data11: false,
    data12: 10,
    data13: true
  });
  await publicLogic.setBasicData06({
    data1: 1000,
    data2: 100
  });
  await publicLogic.setBasicData08({
    data1: 1000,
    data2: true,
    data3: false,
    data4: true,
    data5: {
      data1: 1,
      data2: 2,
      data3: 0,
      data4: 1,
      data5: 2
    },
    data6: {
      data1: 2,
      data2: 1,
      data3: 0,
      data4: 2,
      data5: 1
    }
  });
  await publicLogic.setBasicData09({
    data1: 12,
    data2: 0,
    data3: 22,
    data4: 10,
    data5: 0,
    data6: 59,
  });

  await publicLogic.setBasicData10({
    data1: publicLogic.address,
    data2: publicLibrary.address,
    data3: publicStorage.address,
  });

  await privateLogic.setBasicData11({
    data1: publicLogic.address,
    data2: publicLibrary.address,
    data3: true,
    data4: false,
    data5: 15,
    data6: 75,
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
