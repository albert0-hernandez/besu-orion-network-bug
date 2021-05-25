pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: GPL-3.0

import "./PublicLibrary.sol";
import "./IEternalStorage.sol";


// TODO : Call to all publicLibrary checks.
contract PrivateLogic {

    using PublicLibrary for PublicLibrary.ManagedData;

    IEternalStorage private eternalStorage;

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

    constructor(IEternalStorage _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function setBasicData11(BasicData11 calldata _basicData11) external {
        eternalStorage.setAddress(0xe2d8129304e5ea3ba4e09b40d5d303169725ee10f04c5808c86b6e4eb51bb3b6,_basicData11.data1);
        eternalStorage.setAddress(0x0f405876b3b8aa224683f55116c65431fa6604104cd7022428c5a5dfa39654ae,_basicData11.data2);
        eternalStorage.setBool(0xd513c150e58ba6f145351f16bcc3005c544ed9880fcdee4c0f486bf8715205b8,_basicData11.data3);
        eternalStorage.setBool(0x873f2ea87cf45fb09096a8476fce8672f444678ee6d25cd7fe9c4c6ff0103e8e,_basicData11.data4);
        eternalStorage.setUint(0x19fb7efbb890488ada09307bae83f21d0a818539d5894299b4bfdafa73c92bb3,_basicData11.data5);
        eternalStorage.setUint(0x31ec1858c91858ac6d004bdc14f519f920d92b8af515d54d527a59d7f2295b26,_basicData11.data6);
        eternalStorage.setBool(0x027c4eb6ea8e9b3c6a28db247a13f3a32f2000e0347d6e47db7fec9e1d87673c,_basicData11.data7);
        eternalStorage.setBytes32(0x47558bd93bdb3b97d77f8eaeeee2f40fbf031d21f9d481f3850f2f1852e18c85,_basicData11.data8);
        eternalStorage.setBool(0x4ba4ecd988be9c05a52dc0b2c02566ea260d4faff7ecef7eb3b234b7396abecf,_basicData11.data9);
        eternalStorage.setUint(0xacfd6966a1086ae7ebc928b577d8da71a3a3a4c5bb0959e56b98d4b0e07658ec,_basicData11.data10);
    }

    function getBasicData11() public view returns (BasicData11 memory basicData11_) {
        basicData11_.data1 = eternalStorage.getAddress(0xe2d8129304e5ea3ba4e09b40d5d303169725ee10f04c5808c86b6e4eb51bb3b6);
        basicData11_.data2 = eternalStorage.getAddress(0x0f405876b3b8aa224683f55116c65431fa6604104cd7022428c5a5dfa39654ae);
        basicData11_.data3 = eternalStorage.getBool(0xd513c150e58ba6f145351f16bcc3005c544ed9880fcdee4c0f486bf8715205b8);
        basicData11_.data4 = eternalStorage.getBool(0x873f2ea87cf45fb09096a8476fce8672f444678ee6d25cd7fe9c4c6ff0103e8e);
        basicData11_.data5 = eternalStorage.getUint(0x19fb7efbb890488ada09307bae83f21d0a818539d5894299b4bfdafa73c92bb3);
        basicData11_.data6 = eternalStorage.getUint(0x31ec1858c91858ac6d004bdc14f519f920d92b8af515d54d527a59d7f2295b26);
        basicData11_.data7 = eternalStorage.getBool(0x027c4eb6ea8e9b3c6a28db247a13f3a32f2000e0347d6e47db7fec9e1d87673c);
        basicData11_.data8 = eternalStorage.getBytes32(0x47558bd93bdb3b97d77f8eaeeee2f40fbf031d21f9d481f3850f2f1852e18c85);
        basicData11_.data9 = eternalStorage.getBool(0x4ba4ecd988be9c05a52dc0b2c02566ea260d4faff7ecef7eb3b234b7396abecf);
        basicData11_.data10 = eternalStorage.getUint(0xacfd6966a1086ae7ebc928b577d8da71a3a3a4c5bb0959e56b98d4b0e07658ec);
    }

    function setBasicData12(BasicData12 calldata _basicData12) external {
        eternalStorage.setUint(0x9212ec7f3f7f554cb73751745ec5f8b162c40e99fe0e2ac8a7710f4a586cd20c,_basicData12.data1);
    }

    function getBasicData12() public view returns (BasicData12 memory basicData12_) {
        basicData12_.data1 = eternalStorage.getUint(0x9212ec7f3f7f554cb73751745ec5f8b162c40e99fe0e2ac8a7710f4a586cd20c);
    }

    function validate() external view returns (bool) {
        PublicLibrary.ManagedData memory managedData;
        BasicData11 memory basicData11 = getBasicData11();
        BasicData12 memory basicData12 = getBasicData12();
        managedData = managedData.buildManagedData(
            PublicLogic(basicData11.data1),
            basicData11,
            basicData12
        );

        return managedData
            .checkData0107Enabled()
            .checkData0106Positive()
            .checkData02()
            .checkData03()
            .checkData04First()
            .checkData04Second()
            .checkData05First()
            .checkData05Second()
            .checkData05Third()
            .checkData05Fourth()
            .result;
    }

}
