pragma solidity ^0.5.2;
// SPDX-License-Identifier: Unlicensed

contract pengujianParameter {
    
    mapping(address => mapping(bytes32 => bytes32)) public registry;

    event Log(
        address sender,
        bytes32 fullName,
        bytes32 addr,
        bytes32 gender,
        bytes32 title,
        bytes32 phone);

    function setClaim(bytes32 _fullName, bytes32 _addr, bytes32 _gender, bytes32 _title, bytes32 _phone) public {
        registry[msg.sender][_addr] = _fullName;
        emit Log(msg.sender, _fullName, _addr, _gender, _title, _phone);
    }
}