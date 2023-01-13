// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; 

contract SimpleStorage{

    uint256 public favorateNumber;
    mapping(string => uint256) public nameToFavorateNumber;
    // People public person = People ({ favorateNumber:2, name: "Nitesh"});
    People[] public people;
    struct People {
        uint256 favorateNumber;
        string name;
    }

    function store(uint256 _favorateNumber) public{
        favorateNumber = _favorateNumber;
    }
    
    function addPerson(string memory _name, uint256 _favorateNumber) public{
        people.push(People(_favorateNumber,_name));
        nameToFavorateNumber[_name] = _favorateNumber;
    }
}

// syntext:

// mapping(typeofKey => typeofValue) visibility variableName;
// ex:
//     mapping(string => uint256) public nameToFavorateNumber;

// operation ex:
//     nameToFavorateNumber[_name] = _favorateNumber;