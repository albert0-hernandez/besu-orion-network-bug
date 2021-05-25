// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "./IEternalStorage.sol";


// This code has not been professionally audited, therefore I cannot make any promises about
// safety or correctness. Use at own risk.
contract EternalStorage is IEternalStorage {

    address owner = msg.sender;
    address latestVersion;

    mapping(bytes32 => uint) uIntStorage;
    mapping(bytes32 => int) intStorage;
    mapping(bytes32 => address) addressStorage;
    mapping(bytes32 => bool) boolStorage;
    mapping(bytes32 => bytes32) bytes32Storage;
    mapping(bytes32 => string) stringStorage;

    modifier onlyLatestVersion() {
        require(msg.sender == latestVersion);
        _;
    }

    function upgradeVersion(address _newVersion) public {
        require(msg.sender == owner);
        latestVersion = _newVersion;
    }

    // *** Getter Methods ***
    function getUint(bytes32 _key) external override view returns(uint) {
        return uIntStorage[_key];
    }

    function getInt(bytes32 _key) external override view returns(int) {
        return intStorage[_key];
    }

    function getAddress(bytes32 _key) external override view returns(address) {
        return addressStorage[_key];
    }

    function getBool(bytes32 _key) external override view returns(bool) {
        return boolStorage[_key];
    }

    function getBytes32(bytes32 _key) external override view returns(bytes32) {
        return bytes32Storage[_key];
    }

    function getString(bytes32 _key) external override view returns(string memory) {
        return stringStorage[_key];
    }

    // *** Setter Methods ***
    function setUint(bytes32 _key, uint _value) onlyLatestVersion external override {
        uIntStorage[_key] = _value;
    }

    function setInt(bytes32 _key, int _value) onlyLatestVersion external override {
        intStorage[_key] = _value;
    }

    function setAddress(bytes32 _key, address _value) onlyLatestVersion external override {
        addressStorage[_key] = _value;
    }

    function setBool(bytes32 _key, bool _value) onlyLatestVersion external override {
        boolStorage[_key] = _value;
    }

    function setBytes32(bytes32 _key, bytes32 _value) onlyLatestVersion external override {
        bytes32Storage[_key] = _value;
    }

    function setString(bytes32 _key, string memory _value) onlyLatestVersion external override {
        stringStorage[_key] = _value;
    }

    // *** Delete Methods ***
    function deleteUint(bytes32 _key) onlyLatestVersion external override {
        delete uIntStorage[_key];
    }

    function deleteInt(bytes32 _key) onlyLatestVersion external override {
        delete intStorage[_key];
    }

    function deleteAddress(bytes32 _key) onlyLatestVersion external override {
        delete addressStorage[_key];
    }

    function deleteBool(bytes32 _key) onlyLatestVersion external override {
        delete boolStorage[_key];
    }

    function deleteBytes32(bytes32 _key) onlyLatestVersion external override {
        delete bytes32Storage[_key];
    }

    function deleteString(bytes32 _key) onlyLatestVersion external override {
        delete stringStorage[_key];
    }
}
