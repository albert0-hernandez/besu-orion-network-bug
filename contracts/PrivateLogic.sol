// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./PublicLibrary.sol";


// TODO : Alex struct to eternalStorage
// TODO : Call to all publicLibrary checks.
contract PrivateLogic {

    using PublicLibrary for PublicLibrary.ManagedData;

    struct BasicData11 {
        address data1;
        address data2;
        bool data3;
        bool data4;
        uint256 data5;
        uint256 data6;
        bool data7;
        bytes32 data8;
        bool data9;
        uint256 data10;
    }

    struct BasicData12 {
        uint256 data1;
    }

    BasicData11 basicData11;
    BasicData12 basicData12;

    function setBasicData11(BasicData11 calldata _basicData11) external {
        basicData11 = _basicData11;
    }

    function getBasicData11() public returns (BasicData11 memory) {
        return basicData11;
    }

    function setBasicData12(BasicData12 calldata _basicData12) external {
        basicData12 = _basicData12;
    }

    function getBasicData12() public returns (BasicData12 memory) {
        return basicData12;
    }

    function validate() external returns (bool) {
        PublicLibrary.ManagedData memory managedData;
        managedData = managedData.buildManagedData(
            PublicStorage(basicData11.data1),
            basicData11,
            basicData12
        );

        managedData.checkData0107Enabled()
        .checkData0106Positive();

        return managedData.result;
    }

}
