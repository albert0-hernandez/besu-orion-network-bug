// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./EternalStorage.sol";


// TODO: to eternal storage (MSD)
contract PublicStorage {

    EternalStorage private eternalStorage;

    struct BasicData01 {
        string data1;
        string data2;
        uint256 data3;
        uint256 data4;
        string data5;
        uint256 data6;
        bool data7;
        uint256 data8;
        bool data9;
    }

    struct BasicData02 {
        uint256 data1;
        uint256 data2;
        uint256 data3;
    }

    struct BasicData03 {
        uint256 data1;
        uint256 data2;
        uint256 data3;
        uint256 data4;
        uint256 data5;
    }

    struct BasicData04 {
        uint256 data1;
        uint256 data2;
        uint256 data3;
        uint256 data4;
        uint256 data5;
        uint256 data6;
        bool data7;
        bool data8;
    }

    struct BasicData05 {
        uint256 data1;
        uint256 data2;
        bool data3;
        bool data4;
        int256 data5;
        int256 data6;
        bool data7;
        bool data8;
        bool data9;
        int256 data10;
        bool data11;
        int256 data12;
        bool data13;
    }

    struct BasicData06 {
        uint256 data1;
        uint256 data2;
    }

    struct BasicData07 {
        uint256 data1;
        uint256 data2;
        uint256 data3;
        uint256 data4;
        uint256 data5;
    }

    struct BasicData08 {
        uint256 data1;
        //Fund and FundHouse params fees
        bool data2; // if false, using gross
        bool data3; // if false, using gross
        bool data4; //true instrument fee from NAV otherwise, from amount
        BasicData07 data5;
        BasicData07 data6;
    }

    struct BasicData09 {
        uint256 data1;
        uint256 data2;
        uint256 data3;
        uint256 data4;
        uint256 data5;
        uint256 data6;
    }

    struct BasicData10 {
        address data1;
        address data2;
        address data3;
    }

    constructor(EternalStorage _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function setBasicData01(BasicData01 calldata _basicData01) external {
        eternalStorage.setString(0xf926e8392da812e11ba1bc45d0151c4e9031ef1013916e382956861d3450b3cb, _basicData01.data1);
        eternalStorage.setString(0xba9caba7ca6f8b8dfa3be471892eaa7572d7c1ebcb8e6c0b76d888932a4b971a, _basicData01.data2);
        eternalStorage.setUint(0x199f0d5b707c89aa54ab3b6968fbc01a27e445498957b087f6c617a3911fd8d4, _basicData01.data3);
        eternalStorage.setUint(0x0aa841dfde7fbfc8f3c4de06053a9248c808ef725d608e77891341d323170f2f, _basicData01.data4);
        eternalStorage.setString(0xd692d908faf04d5319cc010bf8bc11c20a8bbabc86243ad337c9c136b5c7ff78, _basicData01.data5);
        eternalStorage.setUint(0x89f6480f5abd1d56a162de519962d35b2e96576e1626796903fd1671307dc1b1, _basicData01.data6);
        eternalStorage.setBool(0x821945b60829d4f89ab91574f9e9817720537548233d79b3ed07ecec68bfd1bb, _basicData01.data7);
        eternalStorage.setUint(0x361b75620cec5c6dfbb1d33a65f2ec5d82139126a9ef4f9a6f2eee640f066488, _basicData01.data8);
        eternalStorage.setBool(0x162b2678c97f3780e91a4edd9f9ee62e0c620b412e2fbc753c1f9e57bb8312dc, _basicData01.data9);
    }

    function getBasicData01() public view returns (BasicData01 memory basicData01_) {
        basicData01_.data1 = eternalStorage.getString(0xf926e8392da812e11ba1bc45d0151c4e9031ef1013916e382956861d3450b3cb);
        basicData01_.data2 = eternalStorage.getString(0xba9caba7ca6f8b8dfa3be471892eaa7572d7c1ebcb8e6c0b76d888932a4b971a);
        basicData01_.data3 = eternalStorage.getUint(0x199f0d5b707c89aa54ab3b6968fbc01a27e445498957b087f6c617a3911fd8d4);
        basicData01_.data4 = eternalStorage.getUint(0x0aa841dfde7fbfc8f3c4de06053a9248c808ef725d608e77891341d323170f2f);
        basicData01_.data5 = eternalStorage.getString(0xd692d908faf04d5319cc010bf8bc11c20a8bbabc86243ad337c9c136b5c7ff78);
        basicData01_.data6 = eternalStorage.getUint(0x89f6480f5abd1d56a162de519962d35b2e96576e1626796903fd1671307dc1b1);
        basicData01_.data7 = eternalStorage.getBool(0x821945b60829d4f89ab91574f9e9817720537548233d79b3ed07ecec68bfd1bb);
        basicData01_.data8 = eternalStorage.getUint(0x361b75620cec5c6dfbb1d33a65f2ec5d82139126a9ef4f9a6f2eee640f066488);
        basicData01_.data9 = eternalStorage.getBool(0x162b2678c97f3780e91a4edd9f9ee62e0c620b412e2fbc753c1f9e57bb8312dc);
    }

    function setBasicData02(BasicData02 calldata _basicData02) external {
        eternalStorage.setUint(0xd9c3160c08f29e6f06eac4bce64f55c3b0b54c72976c68921eab28404e253037, _basicData02.data1);
        eternalStorage.setUint(0x92a5a2c66b927884e77cbf0725c67b3906a723468f7c45129120e2d3d97efbc8, _basicData02.data2);
        eternalStorage.setUint(0xbe3884fd5ac56cc8a51c67ef1cfce0556e5e5df2777a67343e599046d2adbbe6, _basicData02.data3);
    }

    function getBasicData02() public view returns (BasicData02 memory basicData02_) {
        basicData02_.data1 = eternalStorage.getUint(0xd9c3160c08f29e6f06eac4bce64f55c3b0b54c72976c68921eab28404e253037);
        basicData02_.data2 = eternalStorage.getUint(0x92a5a2c66b927884e77cbf0725c67b3906a723468f7c45129120e2d3d97efbc8);
        basicData02_.data3 = eternalStorage.getUint(0xbe3884fd5ac56cc8a51c67ef1cfce0556e5e5df2777a67343e599046d2adbbe6);
    }

    function setBasicData03(BasicData03 calldata _basicData03) external {
        eternalStorage.setUint(0x3359c6b367ee86a8edf9c3590e90a1c395e8c08c32851ac55ec995a2b082d327, _basicData03.data1);
        eternalStorage.setUint(0x184d52b30969fd072ec169793b65a85d76bbac1acae4f09b739061dce8368ee7, _basicData03.data2);
        eternalStorage.setUint(0x33467197b0db5cb8a9f499a97b2509493c822d6110cde9b748bbc476d2d526ee, _basicData03.data3);
        eternalStorage.setUint(0x21a145e4bb8c9becb9d1c6f70303587782b8ee93c0672283df4d9bffa2513a46, _basicData03.data4);
        eternalStorage.setUint(0xc2e54ff6c46f211f16f2f91d909eab8e1ed9a89f509b279fc64651d8aba0a2e8, _basicData03.data5);
    }

    function getBasicData03() public view returns (BasicData03 memory basicData03_) {
        basicData03_.data1 = eternalStorage.getUint(0x3359c6b367ee86a8edf9c3590e90a1c395e8c08c32851ac55ec995a2b082d327);
        basicData03_.data2 = eternalStorage.getUint(0x184d52b30969fd072ec169793b65a85d76bbac1acae4f09b739061dce8368ee7);
        basicData03_.data3 = eternalStorage.getUint(0x33467197b0db5cb8a9f499a97b2509493c822d6110cde9b748bbc476d2d526ee);
        basicData03_.data4 = eternalStorage.getUint(0x21a145e4bb8c9becb9d1c6f70303587782b8ee93c0672283df4d9bffa2513a46);
        basicData03_.data5 = eternalStorage.getUint(0xc2e54ff6c46f211f16f2f91d909eab8e1ed9a89f509b279fc64651d8aba0a2e8);
    }

    function setBasicData04(BasicData04 calldata _basicData04) external {
        eternalStorage.setUint(0x74575ed270401df57ba6f3104548dcc6768de472bddd091241f80726856c31ba, _basicData04.data1);
        eternalStorage.setUint(0x755a3e560823a54f8b4c5c20699482717b444f9ac5c54189dd8337796a4d0aff, _basicData04.data2);
        eternalStorage.setUint(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData04.data3);
        eternalStorage.setUint(0x59f29989a94db7741d87eee1f00cbc08d7edf8b4afbaf4d81aada859e5a23bd9, _basicData04.data4);
        eternalStorage.setUint(0x63cc3e9fa50e50fe640682a0f79d9e4506ad9bc17530c28cc92ee46d0d0c1ffe, _basicData04.data5);
        eternalStorage.setUint(0x5bda2cba93a4adc1a216dc6c1aefcfb2cc7f1c004dc5c72ffb9910306aadfd03, _basicData04.data6);
        eternalStorage.setBool(0x8c11e43aa54db7ce2a2e3e792594774ffebc7ac1a3dbe16e046834765c6ba31d, _basicData04.data7);
        eternalStorage.setBool(0x1715173cbbf1c83ea95c48dac7815d848e65b68106d6cdbfd999f1cffae53ba5, _basicData04.data8);
    }

    function getBasicData04() public view returns (BasicData04 memory basicData04_) {
        basicData04_.data1 = eternalStorage.getUint(0x74575ed270401df57ba6f3104548dcc6768de472bddd091241f80726856c31ba);
        basicData04_.data2 = eternalStorage.getUint(0x755a3e560823a54f8b4c5c20699482717b444f9ac5c54189dd8337796a4d0aff);
        basicData04_.data3 = eternalStorage.getUint(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData04_.data4 = eternalStorage.getUint(0x59f29989a94db7741d87eee1f00cbc08d7edf8b4afbaf4d81aada859e5a23bd9);
        basicData04_.data5 = eternalStorage.getUint(0x63cc3e9fa50e50fe640682a0f79d9e4506ad9bc17530c28cc92ee46d0d0c1ffe);
        basicData04_.data6 = eternalStorage.getUint(0x5bda2cba93a4adc1a216dc6c1aefcfb2cc7f1c004dc5c72ffb9910306aadfd03);
        basicData04_.data7 = eternalStorage.getBool(0x8c11e43aa54db7ce2a2e3e792594774ffebc7ac1a3dbe16e046834765c6ba31d);
        basicData04_.data8 = eternalStorage.getBool(0x1715173cbbf1c83ea95c48dac7815d848e65b68106d6cdbfd999f1cffae53ba5);
    }

    function setBasicData05(BasicData05 calldata _basicData05) external {
        eternalStorage.setUint(0x88d9ddf14ca1a645d3c2ec355c44ac4231cfb889c714c1d1e68d4c6ada4c8010, _basicData05.data1);
        eternalStorage.setUint(0x755a3e560823a54f8b4c5c20699482717b444f9ac5c54189dd8337796a4d0aff, _basicData05.data2);
        eternalStorage.setBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data3);
        eternalStorage.setBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data4);
        eternalStorage.setInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data5);
        eternalStorage.setInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data6);
        eternalStorage.setBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data7);
        eternalStorage.setBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data8);
        eternalStorage.setBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data9);
        eternalStorage.setInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data10);
        eternalStorage.setBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data11);
        eternalStorage.setInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data12);
        eternalStorage.setBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32, _basicData05.data13);
    }

    function getBasicData05() public view returns (BasicData05 memory basicData05_) {
        basicData05_.data1 = eternalStorage.getUint(0x88d9ddf14ca1a645d3c2ec355c44ac4231cfb889c714c1d1e68d4c6ada4c8010);
        basicData05_.data2 = eternalStorage.getUint(0x755a3e560823a54f8b4c5c20699482717b444f9ac5c54189dd8337796a4d0aff);
        basicData05_.data3 = eternalStorage.getBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data4 = eternalStorage.getBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data5 = eternalStorage.getInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data6 = eternalStorage.getInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data7 = eternalStorage.getBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data8 = eternalStorage.getBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data9 = eternalStorage.getBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data10 = eternalStorage.getInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data11 = eternalStorage.getBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data12 = eternalStorage.getInt(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
        basicData05_.data13 = eternalStorage.getBool(0x253a6e8065609ac500aac151384f215d2d444752026dcf8a3a6410366a32db32);
    }

    function setBasicData06(BasicData06 calldata _basicData06) external {
//        basicData06 = _basicData06;
    }

    function getBasicData06() public view returns (BasicData06 memory basicData06_) {
//        basicData06_ = basicData06;
    }

    function setBasicData08(BasicData08 calldata _basicData08) external {
//        basicData08 = _basicData08;
    }

    function getBasicData08() public view returns (BasicData08 memory basicData08_) {
//        basicData08_ = basicData08;
    }

    function setBasicData09(BasicData09 calldata _basicData09) external {
//        basicData09 = _basicData09;
    }

    function getBasicData09() public view returns (BasicData09 memory basicData09_) {
//        basicData09_ = basicData09;
    }

    function setBasicData10(BasicData10 calldata _basicData10) external {
//        basicData10 = _basicData10;
    }

    function getBasicData10() public view returns (BasicData10 memory basicData10_) {
//        basicData10_ = basicData10;
    }

}
