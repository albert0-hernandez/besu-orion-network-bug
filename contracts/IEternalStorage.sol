// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// This code has not been professionally audited, therefore I cannot make any promises about
// safety or correctness. Use at own risk.
interface IEternalStorage {

    // *** Getter Methods ***
    function getUint(bytes32 _key) external view returns(uint);
    function getInt(bytes32 _key) external view returns(int);
    function getAddress(bytes32 _key) external view returns(address);
    function getBool(bytes32 _key) external view returns(bool);
    function getBytes32(bytes32 _key) external view returns(bytes32);
    function getString(bytes32 _key) external view returns(string memory);

    // *** Setter Methods ***
    function setUint(bytes32 _key, uint _value) external;
    function setInt(bytes32 _key, int _value) external;
    function setAddress(bytes32 _key, address _value) external;
    function setBool(bytes32 _key, bool _value) external;
    function setBytes32(bytes32 _key, bytes32 _value) external;
    function setString(bytes32 _key, string memory _value) external;

    // *** Delete Methods ***
    function deleteUint(bytes32 _key) external;
    function deleteInt(bytes32 _key) external;
    function deleteAddress(bytes32 _key) external;
    function deleteBool(bytes32 _key) external;
    function deleteBytes32(bytes32 _key) external;
    function deleteString(bytes32 _key) external;
}
