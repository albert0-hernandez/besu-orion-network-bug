pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: GPL-3.0

import "./PublicLogic.sol";
import "./PrivateLogic.sol";

// TODO: Fill with new checkXXX random functions
// TODO: Do specific check with 5-15 stack calls with several actions (recursive?)
library PublicLibrary {

    struct ManagedData {
        PublicLogic.BasicData01 basicData01;
        PublicLogic.BasicData02 basicData02;
        PublicLogic.BasicData03 basicData03;
        PublicLogic.BasicData04 basicData04;
        PublicLogic.BasicData05 basicData05;
        PublicLogic.BasicData06 basicData06;
        PublicLogic.BasicData08 basicData08;
        PublicLogic.BasicData09 basicData09;
        PublicLogic.BasicData10 basicData10;
        PrivateLogic.BasicData11 basicData11;
        PrivateLogic.BasicData12 basicData12;
        bool result;
    }

    function buildManagedData(
        ManagedData memory _managedData,
        PublicLogic _publicLogic,
        PrivateLogic.BasicData11 memory _basicData11,
        PrivateLogic.BasicData12 memory _basicData12
    ) public view returns (ManagedData memory managedData_)
    {
        managedData_ = _managedData;
        managedData_.basicData01 = _publicLogic.getBasicData01();
        managedData_.basicData02 = _publicLogic.getBasicData02();
        managedData_.basicData03 = _publicLogic.getBasicData03();
        managedData_.basicData04 = _publicLogic.getBasicData04();
        managedData_.basicData05 = _publicLogic.getBasicData05();
        managedData_.basicData06 = _publicLogic.getBasicData06();
        managedData_.basicData08 = _publicLogic.getBasicData08();
        managedData_.basicData09 = _publicLogic.getBasicData09();
        managedData_.basicData10 = _publicLogic.getBasicData10();
        managedData_.basicData11 = _basicData11;
        managedData_.basicData12 = _basicData12;
    }

    function checkData0107Enabled(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        managedData_.result = !managedData_.basicData01.data7;
    }

    function checkData0106Positive(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = managedData_.basicData01.data6 > 0;
    }

    function checkData02(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = managedData_.basicData02.data1 + managedData_.basicData02.data2 + managedData_.basicData02.data3 < 10000;
    }

    function checkData03(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData03.data3 * managedData_.basicData03.data4 + managedData_.basicData03.data5
        ) != 0 && (
            managedData_.basicData03.data1 + managedData_.basicData03.data2
        ) != 0;
    }

    function checkData04First(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData04.data7 &&
            managedData_.basicData04.data1 + managedData_.basicData04.data2 + managedData_.basicData04.data3 > 0
        ) || managedData_.basicData04.data8;
    }

    function checkData04Second(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData04.data8 &&
            managedData_.basicData04.data4 + managedData_.basicData04.data5 + managedData_.basicData04.data6 > 0
        ) || managedData_.basicData04.data7;
    }

    function checkData05First(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            int(managedData_.basicData05.data1) + managedData_.basicData05.data5 < 0 &&
            managedData_.basicData05.data3
        );
    }

    function checkData05Second(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            int(managedData_.basicData05.data2) + managedData_.basicData05.data6 == 0 &&
            !managedData_.basicData05.data4
        );
    }

    function checkData05Third(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData05.data10 < 0 &&
            !managedData_.basicData05.data11
        );
    }

    function checkData05Fourth(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData05.data12 > 0 &&
            managedData_.basicData05.data13
        );
    }

    function checkData05Fifth(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData05.data7 || managedData_.basicData05.data8 || managedData_.basicData05.data9
        );
    }

    function checkData06(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
           managedData_.basicData06.data1 > 0 && managedData_.basicData06.data2 > 0
        );
    }

    function checkData08First(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData08.data1 > 0
        );
    }

    function checkData08Second(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData08.data5.data1 < 3 &&
            managedData_.basicData08.data5.data2 < 3 &&
            managedData_.basicData08.data5.data3 < 3 &&
            managedData_.basicData08.data5.data4 < 3 &&
            managedData_.basicData08.data5.data5 < 3
        );
    }

    function checkData08Third(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData08.data6.data1 < 3 &&
            managedData_.basicData08.data6.data2 < 3 &&
            managedData_.basicData08.data6.data3 < 3 &&
            managedData_.basicData08.data6.data4 < 3 &&
            managedData_.basicData08.data6.data5 < 3
        );
    }

    function checkData09(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData09.data1 < 48 &&
            managedData_.basicData09.data2 < 120 &&
            managedData_.basicData09.data3 < 48 &&
            managedData_.basicData09.data4 < 120 &&
            managedData_.basicData09.data5 < 48 &&
            managedData_.basicData09.data6 < 120
        );
    }

    function checkData10(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData10.data1 != address(0) &&
            managedData_.basicData10.data2 != address(0) &&
            managedData_.basicData10.data3 != address(0)
        );
    }

    function checkData11First(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData11.data1 != address(0) &&
            managedData_.basicData11.data2 != address(0)
        );
    }

    function checkData11Second(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData11.data8 != 0x0000000000000000000000000000000000000000000000000000000000000000
        );
    }

    function checkData11Third(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData11.data10 < 10000
        );
    }

    function checkData11Fourth(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData11.data10 > managedData_.basicData11.data5 &&
            managedData_.basicData11.data10 < managedData_.basicData11.data6
        );
    }

    function checkData11Fifth(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData11.data3 || managedData_.basicData11.data4 ||
            managedData_.basicData11.data7 || managedData_.basicData11.data9
        );
    }

    function checkData12(ManagedData memory _managedData) public pure returns (ManagedData memory managedData_) {
        managedData_ = _managedData;

        if (!managedData_.result) {
            return managedData_;
        }

        managedData_.result = (
            managedData_.basicData11.data10 < managedData_.basicData12.data1 &&
            managedData_.basicData11.data6 > managedData_.basicData12.data1
        );
    }

}
