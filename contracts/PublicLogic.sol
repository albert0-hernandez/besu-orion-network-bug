pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: GPL-3.0

import "./IEternalStorage.sol";

// TODO: to eternal storage (MSD)
contract PublicLogic {

    IEternalStorage private eternalStorage;

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

    constructor(IEternalStorage _eternalStorage) {
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
        eternalStorage.setUint(0x17b76dcfdc0eed753b489ee38c7820b82d3c675d689c7fa164bd0ef616f9de9a, _basicData05.data2);
        eternalStorage.setBool(0xdd425824d923438442b94b335be679eec99b9eacc3adb129b016db4b301f6339, _basicData05.data3);
        eternalStorage.setBool(0x9dcba059d50cb13a20eab7a0542b5854cc5bffe40b173e7f856676b38c7786aa, _basicData05.data4);
        eternalStorage.setInt(0x5bbe0e3bcbcb1af147ccee1cea223d138b79a21ca7d0ac57f0a84002eb926f5f, _basicData05.data5);
        eternalStorage.setInt(0x4a0087ba365b78a85cadb4a87bfbd64bd8c9d19697a50a1b922f2fd342314532, _basicData05.data6);
        eternalStorage.setBool(0x41dff0c830ab0e97ba21e7ed4d76c1d8fee8114f63d5700e22f05fe991cb3e9f, _basicData05.data7);
        eternalStorage.setBool(0xf653b21ea6c047bd814664d3cde55937f674460302137a55be291efc40569921, _basicData05.data8);
        eternalStorage.setBool(0x85e55316befe2489aa20db3515ff7bde2030d3e2271af5b29c2e9e5e06ea408e, _basicData05.data9);
        eternalStorage.setInt(0xd3e6f071547ad0e869eea6f7a0f543014f582c8c561aadaac07017a1d891a529, _basicData05.data10);
        eternalStorage.setBool(0x308851c5fd60047e9fe12e7dfc0c898ed770d52fb40db274d8116a13758d6a7a, _basicData05.data11);
        eternalStorage.setInt(0x37d128b52e5945c01cfc7b719cad043e0d92ef2ed3b995e309c67dc316ad44e2, _basicData05.data12);
        eternalStorage.setBool(0xf09cb63d0d5143d173c00371df98ee298be7a3cfaf90a7d4c780e9f3665619c6, _basicData05.data13);
    }

    function getBasicData05() public view returns (BasicData05 memory basicData05_) {
        basicData05_.data1 = eternalStorage.getUint(0x88d9ddf14ca1a645d3c2ec355c44ac4231cfb889c714c1d1e68d4c6ada4c8010);
        basicData05_.data2 = eternalStorage.getUint(0x17b76dcfdc0eed753b489ee38c7820b82d3c675d689c7fa164bd0ef616f9de9a);
        basicData05_.data3 = eternalStorage.getBool(0xdd425824d923438442b94b335be679eec99b9eacc3adb129b016db4b301f6339);
        basicData05_.data4 = eternalStorage.getBool(0x9dcba059d50cb13a20eab7a0542b5854cc5bffe40b173e7f856676b38c7786aa);
        basicData05_.data5 = eternalStorage.getInt(0x5bbe0e3bcbcb1af147ccee1cea223d138b79a21ca7d0ac57f0a84002eb926f5f);
        basicData05_.data6 = eternalStorage.getInt(0x4a0087ba365b78a85cadb4a87bfbd64bd8c9d19697a50a1b922f2fd342314532);
        basicData05_.data7 = eternalStorage.getBool(0x41dff0c830ab0e97ba21e7ed4d76c1d8fee8114f63d5700e22f05fe991cb3e9f);
        basicData05_.data8 = eternalStorage.getBool(0xf653b21ea6c047bd814664d3cde55937f674460302137a55be291efc40569921);
        basicData05_.data9 = eternalStorage.getBool(0x85e55316befe2489aa20db3515ff7bde2030d3e2271af5b29c2e9e5e06ea408e);
        basicData05_.data10 = eternalStorage.getInt(0xd3e6f071547ad0e869eea6f7a0f543014f582c8c561aadaac07017a1d891a529);
        basicData05_.data11 = eternalStorage.getBool(0x308851c5fd60047e9fe12e7dfc0c898ed770d52fb40db274d8116a13758d6a7a);
        basicData05_.data12 = eternalStorage.getInt(0x37d128b52e5945c01cfc7b719cad043e0d92ef2ed3b995e309c67dc316ad44e2);
        basicData05_.data13 = eternalStorage.getBool(0xf09cb63d0d5143d173c00371df98ee298be7a3cfaf90a7d4c780e9f3665619c6);
    }

    function setBasicData06(BasicData06 calldata _basicData06) external {
        eternalStorage.setUint(0x694626b1e7f0150bbdc3c13f7af8af75a327a8ad2d5a4dc71b32e6f733ecf8ef, _basicData06.data1);
        eternalStorage.setUint(0x9187b824e20f0a6c364d9617864561e95902ce569be3be9f9cf33be3696b11f2, _basicData06.data2);
    }

    function getBasicData06() public view returns (BasicData06 memory basicData06_) {
        basicData06_.data1 = eternalStorage.getUint(0x694626b1e7f0150bbdc3c13f7af8af75a327a8ad2d5a4dc71b32e6f733ecf8ef);
        basicData06_.data2 = eternalStorage.getUint(0x9187b824e20f0a6c364d9617864561e95902ce569be3be9f9cf33be3696b11f2);
    }

    function setBasicData08(BasicData08 calldata _basicData08) external {
        eternalStorage.setUint(0x69710e9d61a32dcc0fc0d3298d8b5bb0cf363151cbb48efb828083a03dc701b8, _basicData08.data1);
        eternalStorage.setBool(0x9553f4a727c0c3fb956b3a097af18118b64e0717ee7e2d752e3a856d568de1d6, _basicData08.data2);
        eternalStorage.setBool(0x2d929107d50323257dddb70083d1399ddfa01f5132ffaad626ed8816b131b5a1, _basicData08.data3);
        eternalStorage.setBool(0x770a9ea71ab6e11cd0f159e9217228f648c9102a2d7e2e35d65fcd19ce065b15, _basicData08.data4);

        eternalStorage.setUint(0x992891360be05cf0a925fa0bb57a7b6ff3de8de6a93d73dfbded69c498e91a9b, _basicData08.data5.data1);
        eternalStorage.setUint(0x51f470becfb3fc574965b45578e49ededa15dc71c5b10f703c153ffaa83853d4, _basicData08.data5.data2);
        eternalStorage.setUint(0x1f2446ead39d3530f1b921887df522879f7df5a10e26688ec94d420d9dd85e21, _basicData08.data5.data3);
        eternalStorage.setUint(0x57121a302a769299a4b208fe15c5e2f4b2fbff0014b22b1a5ffbfae032db73b9, _basicData08.data5.data4);
        eternalStorage.setUint(0xa625218715cd70ae4b8bfdd1c46c1a8d77fb14443690c4278bbdd99e1c9eed7d, _basicData08.data5.data5);

        eternalStorage.setUint(0x71873497ba93d0c94f4ec228d225c0ea8032506c1dce5eb3c66c92c65e9d84c6, _basicData08.data6.data1);
        eternalStorage.setUint(0x7c5de915ddd4930ba08f2b5b3a329726d86b27010f8cf9e853b2ddc5027959cb, _basicData08.data6.data2);
        eternalStorage.setUint(0x894f860c9f9146fbe7ffc7eebd51d70a847f5229efec24acf59bbb0d7709c36f, _basicData08.data6.data3);
        eternalStorage.setUint(0x1097f47de14a3e0b43f59b6be19fc91c5e15d3a42c53d469928df44e17d7e0be, _basicData08.data6.data4);
        eternalStorage.setUint(0x53b8beced15b7a94ec39a7f577cd3cd10c140dc21bdd1b86045e0be348e588d9, _basicData08.data6.data5);
    }

    function getBasicData08() public view returns (BasicData08 memory basicData08_) {
        basicData08_.data1 = eternalStorage.getUint(0x69710e9d61a32dcc0fc0d3298d8b5bb0cf363151cbb48efb828083a03dc701b8);
        basicData08_.data2 = eternalStorage.getBool(0x9553f4a727c0c3fb956b3a097af18118b64e0717ee7e2d752e3a856d568de1d6);
        basicData08_.data3 = eternalStorage.getBool(0x2d929107d50323257dddb70083d1399ddfa01f5132ffaad626ed8816b131b5a1);
        basicData08_.data4 = eternalStorage.getBool(0x770a9ea71ab6e11cd0f159e9217228f648c9102a2d7e2e35d65fcd19ce065b15);

        basicData08_.data5.data1 = eternalStorage.getUint(0x992891360be05cf0a925fa0bb57a7b6ff3de8de6a93d73dfbded69c498e91a9b);
        basicData08_.data5.data2 = eternalStorage.getUint(0x51f470becfb3fc574965b45578e49ededa15dc71c5b10f703c153ffaa83853d4);
        basicData08_.data5.data3 = eternalStorage.getUint(0x1f2446ead39d3530f1b921887df522879f7df5a10e26688ec94d420d9dd85e21);
        basicData08_.data5.data4 = eternalStorage.getUint(0x57121a302a769299a4b208fe15c5e2f4b2fbff0014b22b1a5ffbfae032db73b9);
        basicData08_.data5.data5 = eternalStorage.getUint(0xa625218715cd70ae4b8bfdd1c46c1a8d77fb14443690c4278bbdd99e1c9eed7d);

        basicData08_.data6.data1 = eternalStorage.getUint(0x71873497ba93d0c94f4ec228d225c0ea8032506c1dce5eb3c66c92c65e9d84c6);
        basicData08_.data6.data2 = eternalStorage.getUint(0x7c5de915ddd4930ba08f2b5b3a329726d86b27010f8cf9e853b2ddc5027959cb);
        basicData08_.data6.data3 = eternalStorage.getUint(0x894f860c9f9146fbe7ffc7eebd51d70a847f5229efec24acf59bbb0d7709c36f);
        basicData08_.data6.data4 = eternalStorage.getUint(0x1097f47de14a3e0b43f59b6be19fc91c5e15d3a42c53d469928df44e17d7e0be);
        basicData08_.data6.data5 = eternalStorage.getUint(0x53b8beced15b7a94ec39a7f577cd3cd10c140dc21bdd1b86045e0be348e588d9);
    }

    function setBasicData09(BasicData09 calldata _basicData09) external {
        eternalStorage.setUint(0x31e431bc51ee158e25643326a8e2bb2250169393674a9479433845a88c662d20, _basicData09.data1);
        eternalStorage.setUint(0x892f849261eebdb2b72b547cfb29a0e415f3c26ac9ce748681199eb7ab4941dd, _basicData09.data2);
        eternalStorage.setUint(0xfe0f4289e56d7448ea1fc6cbbbbaf6d271149fa17417f87ae7b280959e040b6f, _basicData09.data3);
        eternalStorage.setUint(0x20652197d1061c9beeea04a9c6093aa7069c0648ee26e5d0412d013da9753d00, _basicData09.data4);
        eternalStorage.setUint(0x0afd671c8b0ec8ddaf2afa4a08bf5ed7c89f811aa9fafa769b5e4db3e67e82d9, _basicData09.data5);
        eternalStorage.setUint(0x06b7061bd1c9311e7566d4ac430ffa9aae457ee135c65b6559658ed86fa5473b, _basicData09.data6);
    }

    function getBasicData09() public view returns (BasicData09 memory basicData09_) {
        basicData09_.data1 = eternalStorage.getUint(0x31e431bc51ee158e25643326a8e2bb2250169393674a9479433845a88c662d20);
        basicData09_.data2 = eternalStorage.getUint(0x892f849261eebdb2b72b547cfb29a0e415f3c26ac9ce748681199eb7ab4941dd);
        basicData09_.data3 = eternalStorage.getUint(0xfe0f4289e56d7448ea1fc6cbbbbaf6d271149fa17417f87ae7b280959e040b6f);
        basicData09_.data4 = eternalStorage.getUint(0x20652197d1061c9beeea04a9c6093aa7069c0648ee26e5d0412d013da9753d00);
        basicData09_.data5 = eternalStorage.getUint(0x0afd671c8b0ec8ddaf2afa4a08bf5ed7c89f811aa9fafa769b5e4db3e67e82d9);
        basicData09_.data6 = eternalStorage.getUint(0x06b7061bd1c9311e7566d4ac430ffa9aae457ee135c65b6559658ed86fa5473b);
    }

    function setBasicData10(BasicData10 calldata _basicData10) external {
        eternalStorage.setAddress(0x141a565ed507b4d866c9f3cb2a8bd1e79213fb16c9e48e781d303b7722dfee1d, _basicData10.data1);
        eternalStorage.setAddress(0x04d9fbd969998e34a4c437aa2d0c79fe5ced285e33bdd86dee6d2b1a2e2d522c, _basicData10.data2);
        eternalStorage.setAddress(0xa72edc9252c8399e51c6350c644fa0796ed14a727e3416e1142921eb8ec12e38, _basicData10.data3);
    }

    function getBasicData10() public view returns (BasicData10 memory basicData10_) {
        basicData10_.data1 = eternalStorage.getAddress(0x141a565ed507b4d866c9f3cb2a8bd1e79213fb16c9e48e781d303b7722dfee1d);
        basicData10_.data2 = eternalStorage.getAddress(0x04d9fbd969998e34a4c437aa2d0c79fe5ced285e33bdd86dee6d2b1a2e2d522c);
        basicData10_.data3 = eternalStorage.getAddress(0xa72edc9252c8399e51c6350c644fa0796ed14a727e3416e1142921eb8ec12e38);
    }

}
