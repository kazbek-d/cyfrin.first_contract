// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    // type         visibility  name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256  _newSimpleStorageNumber) public {
        // Address
        // API - Application Binary Interface
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        simpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        // Address
        // API - Application Binary Interface
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}