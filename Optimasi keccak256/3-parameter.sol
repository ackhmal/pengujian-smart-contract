pragma solidity ^0.5.2;
// SPDX-License-Identifier: Unlicensed

contract pengujianParameter {
    
    mapping(bytes32 => bytes32) public registry;

    event Log(
        address sender,
        bytes32 fullName,
        bytes32 addr,
        bytes32 gender);
 
    function setClaim(bytes32 _fullName, bytes32 _addr, bytes32 _gender) public {
        bytes32 encryptedBytes = keccak256(abi.encodePacked(msg.sender, _fullName, _addr, _gender));
        registry[encryptedBytes] = _fullName;
    }
}