//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage 
{
    uint256 favoriteNumber; // init favoriteNumber == 0
    bool favoriteBool;
    

    // struct
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    
    // array
    People[] public people;
    
    //mapping
    mapping(string => uint256) public nameToFavoriteNumber; 

    //function
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    //view or pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
