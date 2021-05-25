// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "./PublicStorage.sol";
import "./PrivateLogic.sol";

// TODO: Fill with new checkXXX random functions
// TODO: Do specific check with 5-15 stack calls with several actions (recursive?)
library PublicLibrary {

    struct ManagedData {
        PublicStorage.BasicData01 basicData01;
        PublicStorage.BasicData02 basicData02;
        PublicStorage.BasicData03 basicData03;
        PublicStorage.BasicData04 basicData04;
        PublicStorage.BasicData05 basicData05;
        PublicStorage.BasicData06 basicData06;
        PublicStorage.BasicData08 basicData08;
        PublicStorage.BasicData09 basicData09;
        PublicStorage.BasicData10 basicData10;
        PrivateLogic.BasicData11 basicData11;
        PrivateLogic.BasicData12 basicData12;
        bool result;
    }

    function buildManagedData(
        ManagedData memory _managedData,
        PublicStorage _publicStorage,
        PrivateLogic.BasicData11 memory _basicData11,
        PrivateLogic.BasicData12 memory _basicData12
    ) public returns (ManagedData memory managedData_)
    {
        managedData_ = _managedData;
        managedData_.basicData01 = _publicStorage.getBasicData01();
        managedData_.basicData02 = _publicStorage.getBasicData02();
        managedData_.basicData03 = _publicStorage.getBasicData03();
        managedData_.basicData04 = _publicStorage.getBasicData04();
        managedData_.basicData05 = _publicStorage.getBasicData05();
        managedData_.basicData06 = _publicStorage.getBasicData06();
        managedData_.basicData08 = _publicStorage.getBasicData08();
        managedData_.basicData09 = _publicStorage.getBasicData09();
        managedData_.basicData10 = _publicStorage.getBasicData10();
        managedData_.basicData11 = _basicData11;
        managedData_.basicData12 = _basicData12;
    }

    function checkData0107Enabled(ManagedData memory _managedData) public returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        managedData_.result = !managedData_.basicData01.data7;
    }

    function checkData0106Positive(ManagedData memory _managedData) public returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = managedData_.basicData01.data6 > 0;
    }

}
