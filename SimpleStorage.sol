// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SimpleStorage {
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieveView() public view returns(uint256) {
        return favoriteNumber;
    } 

    function retrievePure() public pure returns(uint256) {
        return 7;
    } 

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    Person[] public listOfPerson;
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPerson.push(Person(_favoriteNumber, _name));
    }



}