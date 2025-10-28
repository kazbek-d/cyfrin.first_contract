// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function retrievePure() public pure returns(uint256) {
        return 7;
    } 

    // 'memory', 'storage', and 'calldata'
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}